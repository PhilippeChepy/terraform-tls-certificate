variable "key_algorithm" {
  type        = string
  default     = "RSA"
  description = "Key Algorithm (e.g. 'RSA' or 'ECDSA')"
}

variable "ecdsa_curve" {
  type        = string
  default     = null
  description = "May be any of 'P224', 'P256', 'P384' or 'P521', with 'P224' qs the default"
}

variable "rsa_bits" {
  type        = string
  default     = 4096
  description = "Defaults to 4096"
}

variable "organization" {
  type = string
  default = null
}

variable "common_name" {
  type = string
}

variable "dns_sans" {
  type = set(string)
}

variable "ip_sans" {
  type = set(string)
}

variable "server_auth" {
  type    = bool
  default = true
}

variable "client_auth" {
  type    = bool
  default = false
}

variable "validity_period_hours" {
  type = number
}

variable "signing_key_pem" {
  type = string
}

variable "signing_cert_pem" {
  type = string
}