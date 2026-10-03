data "unifi_network" "default" {
  name = "Default"
}

# ==============================================================================
# FW Groups
# ==============================================================================
# The following resources provision the FW groups for the network.

resource "unifi_firewall_group" "rfc1918" {
  name    = "RFC1918"
  type    = "address-group"
  members = ["192.168.0.0/16", "172.16.0.0/12", "10.0.0.0/8"]
}

# ==============================================================================
# Traffic Rules
# ==============================================================================
# The following resources provision the traffic rules for the network.


# ==============================================================================
# FW Rules
# ==============================================================================
# The following resources provision the FW rules for the network.

# Allow Established and Related
resource "unifi_firewall_rule" "allow_established_related" {
  name       = "Allow Established and Related"
  ruleset    = "LAN_IN"
  action     = "accept"
  protocol   = "all"
  rule_index = 2000

  state_established = true
  state_related     = true
  ip_sec            = "match-none"
  logging           = true
}

# Drop Invalid State
resource "unifi_firewall_rule" "drop_invalid_state" {
  name       = "Drop Invalid State"
  ruleset    = "LAN_IN"
  action     = "drop"
  protocol   = "all"
  rule_index = 2010

  state_invalid = true
  ip_sec        = "match-none"
  logging       = true
}

# Allow Default LAN to Anywhere
resource "unifi_firewall_rule" "allow_default_lan_to_anywhere" {
  name       = "Allow Default LAN to Anywhere"
  ruleset    = "LAN_IN"
  action     = "accept"
  protocol   = "all"
  rule_index = 2020

  src_network_id   = data.unifi_network.default.id
  src_network_type = "NETv4"

  dst_firewall_group_ids = [unifi_firewall_group.rfc1918.id]
}

# Block inter-VLAN traffic
resource "unifi_firewall_rule" "block_inter-vlan_traffic" {
  name       = "Block Inter-VLAN Traffic"
  ruleset    = "LAN_IN"
  action     = "drop"
  protocol   = "all"
  rule_index = 2030

  src_firewall_group_ids = [unifi_firewall_group.rfc1918.id]
  dst_firewall_group_ids = [unifi_firewall_group.rfc1918.id]
}
