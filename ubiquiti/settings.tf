# Configure only management settings
resource "unifi_setting" "combined" {
  site = "default"

  mgmt = {
    auto_upgrade = true
    ssh_enabled  = false
  }

  ips = {
    enabled_categories = [
      "",
    ]
    enabled_networks = [
      unifi_network.guest_vlan.id,
      unifi_network.iot_vlan.id,
      unifi_network.home_lab_vlan.id,
      unifi_network.cameras_vlan.id
    ]

    ips_mode = "ips"
  }
}
