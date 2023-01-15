output "location" {
  value       = local.regions[local.location_slug]
  description = "Azure region in standard format"
}
output "location_geo_code" {
  value       = local.geo_short_codes[local.cli_names[local.location_slug]]
  description = "Azure region in short format for resource naming purpose"
}
output "location_cli" {
  value       = local.cli_names[local.location_slug]
  description = "Azure region in Azure CLI name format"
}
output "location_slug" {
  value       = local.location_slug
  description = "Azure region in slug format"
}
output "paired_location" {
  description = <<EOD
Azure paired region with the current one. All formats available as attributes.
```
object({
  location (string): Azure paired region in standard format
  location_geo_code (string): Azure paired region in short format for resource naming purpose
  location_cli (string): Azure paired region in CLI name format
  location_slug (string): Azure paired region in slug format
})
```
EOD
  value = local.paired_region == null ? null : {
    location          = try(local.regions[local.paired_region], null)
    location_geo_code = try(local.geo_short_codes[local.cli_names[local.paired_region]], null)
    location_cli      = try(local.cli_names[local.paired_region], null)
    location_slug     = local.paired_region
  }
}