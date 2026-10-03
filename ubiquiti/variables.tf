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

variable "main_wifi_ssid" {
  description = "SSID for the main WiFi network"
  type        = string
}

variable "main_wifi_password" {
  description = "Password for the main WiFi network"
  type        = string
  sensitive   = true
}

variable "guest_wifi_ssid" {
  description = "SSID for the guest WiFi network"
  type        = string
}

variable "guest_wifi_password" {
  description = "Password for the guest WiFi network"
  type        = string
  sensitive   = true
}

variable "iot_wifi_ssid" {
  description = "SSID for the IoT WiFi network"
  type        = string
}

variable "iot_wifi_password" {
  description = "Password for the IoT WiFi network"
  type        = string
  sensitive   = true
}
