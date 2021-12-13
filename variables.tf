variable "key_algorithm" {
  description = "Key Algorithm (e.g. 'RSA' or 'ECDSA'), with 'RSA' as the default."
  type        = string
  default     = "RSA"
}

variable "ecdsa_curve" {
  description = "May be any of 'P224', 'P256', 'P384' or 'P521', with 'P224' as the default."
  type        = string
  default     = null
}

variable "rsa_bits" {
  description = "Defaults to '4096' bits."
  type        = string
  default     = 4096
}

variable "organization" {
  description = "Define the certificate organization."
  type        = string
  default     = null
}

variable "common_name" {
  description = "Define the certificate common name."
  type        = string
}

variable "dns_sans" {
  description = "Set a list of DNS as SANS (subject alternative names)."
  type        = set(string)
  default     = []
}

variable "ip_sans" {
  description = "Define a list of IP SANS (subject alternative names)."
  type        = set(string)
  default     = []
}

variable "server_auth" {
  description = "Set the certificate usable for server authentication"
  type        = bool
  default     = true
}

variable "client_auth" {
  description = "Set the certificate usable for client authentication"
  type        = bool
  default     = false
}

variable "validity_period_hours" {
  description = "The certificate will expire after this amount of time."
  type        = number
}

variable "signing_key_pem" {
  description = "The private key used to sign this certificate."
  type        = string
}

variable "signing_cert_pem" {
  description = "The root or intermediate certificate used to sign this certificate."
  type        = string
}