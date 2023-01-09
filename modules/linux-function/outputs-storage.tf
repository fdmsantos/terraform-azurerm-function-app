output "storage_account_id" {
  description = "ID of the associated Storage Account, `null` if connection string provided"
  value       = local.storage_account_output.id
}

output "storage_account_name" {
  description = "Name of the associated Storage Account, `null` if connection string provided"
  value       = local.storage_account_output.name
}

output "storage_account_primary_connection_string" {
  description = "Primary connection string of the associated Storage Account, `null` if connection string provided"
  value       = try(local.storage_account_output.primary_connection_string)
  sensitive   = true
}

output "storage_account_primary_access_key" {
  description = "Primary connection string of the associated Storage Account, `null` if connection string provided"
  value       = try(local.storage_account_output.primary_access_key)
  sensitive   = true
}

output "storage_account_secondary_connection_string" {
  description = "Secondary connection string of the associated Storage Account, `null` if connection string provided"
  value       = try(local.storage_account_output.secondary_connection_string)
  sensitive   = true
}

output "storage_account_secondary_access_key" {
  description = "Secondary connection string of the associated Storage Account, `null` if connection string provided"
  value       = try(local.storage_account_output.secondary_access_key)
  sensitive   = true
}

output "storage_account_network_rules" {
  description = "Network rules of the associated Storage Account"
  value       = one(values(azurerm_storage_account_network_rules.storage_network_rules))
}
