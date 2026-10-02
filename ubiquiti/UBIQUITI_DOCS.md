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
| [unifi_network.cameras_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.guest_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.home_lab_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_network.iot_vlan](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/network) | resource |
| [unifi_setting.combined](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/setting) | resource |
| [unifi_wlan.guest](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/resources/wlan) | resource |
| [unifi_client_qos_rate.default](https://registry.terraform.io/providers/ubiquiti-community/unifi/latest/docs/data-sources/client_qos_rate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_allow_insecure"></a> [allow\_insecure](#input\_allow\_insecure) | Whether to allow insecure TLS communications | `bool` | n/a | yes |
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | API key for the Ubiquiti device | `string` | n/a | yes |
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | API URL for the Ubiquiti device | `string` | n/a | yes |
| <a name="input_guest_wifi_password"></a> [guest\_wifi\_password](#input\_guest\_wifi\_password) | Password for the guest WiFi network | `string` | n/a | yes |
| <a name="input_guest_wifi_ssid"></a> [guest\_wifi\_ssid](#input\_guest\_wifi\_ssid) | SSID for the guest WiFi network | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
