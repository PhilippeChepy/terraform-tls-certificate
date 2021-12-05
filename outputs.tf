output "certificate_pem" {
  value = tls_locally_signed_cert.certificate.cert_pem
}

output "private_key_pem" {
  value = tls_private_key.certificate.private_key_pem
}

output "bundle_pem" {
  value = "${tls_private_key.certificate.private_key_pem}${tls_locally_signed_cert.certificate.cert_pem}"
}

output "certificate_bundle_pem" {
  value = "${tls_locally_signed_cert.certificate.cert_pem}${var.signing_cert_pem}"
}