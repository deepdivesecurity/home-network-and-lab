variable "api_url" {
  description = "API URL for the Ubiquiti device"
  type        = string
}

variable "api_key" {
  description = "API key for the Ubiquiti device"
  type        = string
  sensitive   = true
}

variable "allow_insecure" {
  description = "Whether to allow insecure TLS communications"
  type        = bool
}
