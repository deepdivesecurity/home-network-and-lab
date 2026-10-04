# proxmox

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.16.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | ~> 2.9.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 2.9.14 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [proxmox_vm_qemu.linux_box](https://registry.terraform.io/providers/telmate/proxmox/latest/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_pm_host"></a> [pm\_host](#input\_pm\_host) | n/a | `string` | n/a | yes |
| <a name="input_pm_hostname"></a> [pm\_hostname](#input\_pm\_hostname) | n/a | `string` | `"proxmox"` | no |
| <a name="input_pm_tls_insecure"></a> [pm\_tls\_insecure](#input\_pm\_tls\_insecure) | Set to true to ignore certificate errors | `bool` | `true` | no |
| <a name="input_pm_token_id"></a> [pm\_token\_id](#input\_pm\_token\_id) | The Token ID for the proxmox user | `string` | n/a | yes |
| <a name="input_pm_token_secret"></a> [pm\_token\_secret](#input\_pm\_token\_secret) | The Token secret for the proxmox user | `string` | n/a | yes |
| <a name="input_template_vm_name"></a> [template\_vm\_name](#input\_template\_vm\_name) | Name of the template VM | `string` | `"ubuntu-2004-cloudinit-template"` | no |
| <a name="input_vm_gateway"></a> [vm\_gateway](#input\_vm\_gateway) | Gateway of new VMs | `string` | n/a | yes |
| <a name="input_vm_ip"></a> [vm\_ip](#input\_vm\_ip) | IP start of new VMs | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
