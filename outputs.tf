output "certificate_pem" {
  description = "The resulting certificate."
  value       = tls_locally_signed_cert.certificate.cert_pem
}

output "private_key_pem" {
  description = "The private key of the certificate."
  value       = tls_private_key.certificate.private_key_pem
}

output "bundle_pem" {
  description = "A bundle containing the private key and the resulting certificate."
  value       = "${tls_private_key.certificate.private_key_pem}${tls_locally_signed_cert.certificate.cert_pem}"
}

output "certificate_bundle_pem" {
  description = "A bundle containing both the signing and the resulting certificates."
  value       = "${tls_locally_signed_cert.certificate.cert_pem}${var.signing_cert_pem}"
}