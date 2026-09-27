resource "unifi_network" "vlan" {
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

resource "unifi_network" "vlan" {
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

resource "unifi_network" "vlan" {
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

resource "unifi_network" "vlan" {
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
