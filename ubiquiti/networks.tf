data "unifi_client_qos_rate" "default" {
  name = "Default"
}

# ==============================================================================
# VLANs
# ==============================================================================
# The following resources provision the VLANs for the network.

resource "unifi_network" "guest_vlan" {
  name   = "Guests"
  subnet = "192.168.20.0/24"
  vlan   = 20

  dhcp_server = {
    enabled = true
    start   = "192.168.20.6"
    stop    = "192.168.20.254"
  }

  purpose         = "guest"
  internet_access = true
}

resource "unifi_network" "iot_vlan" {
  name   = "IoT"
  subnet = "192.168.30.0/24"
  vlan   = 30

  dhcp_server = {
    enabled = true
    start   = "192.168.30.6"
    stop    = "192.168.30.254"
  }

  purpose           = "vlan-only"
  internet_access   = true
  network_isolation = true
}

resource "unifi_network" "cameras_vlan" {
  name   = "Cameras"
  subnet = "192.168.40.0/24"
  vlan   = 40

  dhcp_server = {
    enabled = true
    start   = "192.168.40.6"
    stop    = "192.168.40.254"
  }

  purpose           = "vlan-only"
  internet_access   = false
  network_isolation = true
}

resource "unifi_network" "home_lab_vlan" {
  name   = "Home Lab"
  subnet = "192.168.50.0/24"
  vlan   = 50

  dhcp_server = {
    enabled = true
    start   = "192.168.50.6"
    stop    = "192.168.50.254"
  }

  purpose           = "vlan-only"
  internet_access   = true
  network_isolation = false
}

# ==============================================================================
# WiFi
# ==============================================================================
# The following resources provision the WiFi networks.

resource "unifi_wlan" "guest" {
  name       = var.guest_wifi_ssid
  passphrase = var.guest_wifi_password
  security   = "wpapsk"

  # enable WPA2/WPA3 support
  wpa3_support    = true
  wpa3_transition = true
  pmf_mode        = "optional"

  is_guest = true
  enabled  = true

  network_id    = unifi_network.guest_vlan.id
  user_group_id = data.unifi_client_qos_rate.default.id
}
