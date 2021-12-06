resource "tls_private_key" "certificate" {
  algorithm   = var.key_algorithm
  ecdsa_curve = var.ecdsa_curve
  rsa_bits    = var.rsa_bits
}

resource "tls_cert_request" "certificate" {
  key_algorithm   = var.key_algorithm
  private_key_pem = tls_private_key.certificate.private_key_pem

  subject {
    common_name  = var.common_name
    organization = var.organization
  }

  dns_names    = var.dns_sans
  ip_addresses = var.ip_sans
}

resource "tls_locally_signed_cert" "certificate" {
  cert_request_pem   = tls_cert_request.certificate.cert_request_pem
  ca_key_algorithm   = var.key_algorithm
  ca_private_key_pem = var.signing_key_pem
  ca_cert_pem        = var.signing_cert_pem

  is_ca_certificate = false

  validity_period_hours = var.validity_period_hours / 60

  allowed_uses = concat([
    "key_encipherment",
    "digital_signature"
    ],
    var.server_auth ? ["server_auth"] : [],
    var.client_auth ? ["client_auth"] : []
  )
}
