output "network_inventory" {
  description = "Configured UniFi networks and their addressing details"

  value = {
    guests = {
      id     = unifi_network.guest_vlan.id
      vlan   = unifi_network.guest_vlan.vlan
      subnet = unifi_network.guest_vlan.subnet
    }
    iot = {
      id     = unifi_network.iot_vlan.id
      vlan   = unifi_network.iot_vlan.vlan
      subnet = unifi_network.iot_vlan.subnet
    }
    cameras = {
      id     = unifi_network.cameras_vlan.id
      vlan   = unifi_network.cameras_vlan.vlan
      subnet = unifi_network.cameras_vlan.subnet
    }
    home_lab = {
      id     = unifi_network.home_lab_vlan.id
      vlan   = unifi_network.home_lab_vlan.vlan
      subnet = unifi_network.home_lab_vlan.subnet
    }
  }
}
