output "storage_account_name" {
  description = "The name of the storage account hosting the static website"
  value       = azurerm_storage_account.storage.name
}

output "static_website_url" {
  description = "The primary endpoint for the static website (direct from storage)"
  value       = azurerm_storage_account.storage.primary_web_endpoint
}
