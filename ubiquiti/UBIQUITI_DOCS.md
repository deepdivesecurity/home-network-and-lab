# ubiquiti

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.16.0 |
| <a name="requirement_unifi"></a> [unifi](#requirement\_unifi) | ~> 0.56.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_unifi"></a> [unifi](#provider\_unifi) | 0.56.1 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [unifi_firewall_group.rfc1918](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/firewall_group) | resource |
| [unifi_firewall_rule.allow_default_lan_to_anywhere](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/firewall_rule) | resource |
| [unifi_firewall_rule.allow_established_related](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/firewall_rule) | resource |
| [unifi_firewall_rule.block_inter-vlan_traffic](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/firewall_rule) | resource |
| [unifi_firewall_rule.drop_invalid_state](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/firewall_rule) | resource |
| [unifi_network.cameras_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.default_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.guest_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.home_lab_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.iot_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_setting.combined](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/setting) | resource |
| [unifi_wlan.guest](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/wlan) | resource |
| [unifi_wlan.iot](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/wlan) | resource |
| [unifi_wlan.main](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/wlan) | resource |
| [unifi_client_qos_rate.default](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/data-sources/client_qos_rate) | data source |
| [unifi_network.default](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/data-sources/network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_allow_insecure"></a> [allow\_insecure](#input\_allow\_insecure) | Whether to allow insecure TLS communications | `bool` | n/a | yes |
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | API key for the Ubiquiti device | `string` | n/a | yes |
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | API URL for the Ubiquiti device | `string` | n/a | yes |
| <a name="input_guest_wifi_password"></a> [guest\_wifi\_password](#input\_guest\_wifi\_password) | Password for the guest WiFi network | `string` | n/a | yes |
| <a name="input_guest_wifi_ssid"></a> [guest\_wifi\_ssid](#input\_guest\_wifi\_ssid) | SSID for the guest WiFi network | `string` | n/a | yes |
| <a name="input_iot_wifi_password"></a> [iot\_wifi\_password](#input\_iot\_wifi\_password) | Password for the IoT WiFi network | `string` | n/a | yes |
| <a name="input_iot_wifi_ssid"></a> [iot\_wifi\_ssid](#input\_iot\_wifi\_ssid) | SSID for the IoT WiFi network | `string` | n/a | yes |
| <a name="input_main_wifi_password"></a> [main\_wifi\_password](#input\_main\_wifi\_password) | Password for the main WiFi network | `string` | n/a | yes |
| <a name="input_main_wifi_ssid"></a> [main\_wifi\_ssid](#input\_main\_wifi\_ssid) | SSID for the main WiFi network | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_network_inventory"></a> [network\_inventory](#output\_network\_inventory) | Configured UniFi networks and their addressing details |
<!-- END_TF_DOCS -->
