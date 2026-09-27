terraform {
  required_providers {
    unifi = {
      source  = "ubiquiti-community/unifi"
      version = "~> 0.56.0"
    }
  }
}

provider "unifi" {
  api_url        = var.api_url
  api_key        = var.api_key
  allow_insecure = var.allow_insecure
}
