# terraform-azurerm-region-info
Terraform Module for azure regional information

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_region"></a> [azure\_region](#input\_azure\_region) | Azure Region standard name, CLI name or slug format | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_location"></a> [location](#output\_location) | Azure region in standard format |
| <a name="output_location_cli"></a> [location\_cli](#output\_location\_cli) | Azure region in Azure CLI name format |
| <a name="output_location_geo_code"></a> [location\_geo\_code](#output\_location\_geo\_code) | Azure region in short format for resource naming purpose |
| <a name="output_location_slug"></a> [location\_slug](#output\_location\_slug) | Azure region in slug format |
| <a name="output_paired_location"></a> [paired\_location](#output\_paired\_location) | Azure paired region with the current one. All formats available as attributes.<pre>object({<br>  location (string): Azure paired region in standard format<br>  location_geo_code (string): Azure paired region in short format for resource naming purpose<br>  location_cli (string): Azure paired region in CLI name format<br>  location_slug (string): Azure paired region in slug format<br>})</pre> |
<!-- END_TF_DOCS -->
