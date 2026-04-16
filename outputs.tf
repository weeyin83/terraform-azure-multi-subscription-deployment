# ──────────────────────────────────────────────────────────────
# Outputs – Resource Group & Storage Account names per subscription
# ──────────────────────────────────────────────────────────────

# ---------- Subscription 1 ----------
output "sub1_resource_group_name" {
  description = "Resource group name in Subscription 1"
  value       = azurerm_resource_group.sub1.name
}

output "sub1_storage_account_name" {
  description = "Storage account name in Subscription 1"
  value       = azurerm_storage_account.sub1.name
}

# ---------- Subscription 2 ----------
output "sub2_resource_group_name" {
  description = "Resource group name in Subscription 2"
  value       = azurerm_resource_group.sub2.name
}

output "sub2_storage_account_name" {
  description = "Storage account name in Subscription 2"
  value       = azurerm_storage_account.sub2.name
}

# ---------- Subscription 3 ----------
output "sub3_resource_group_name" {
  description = "Resource group name in Subscription 3"
  value       = azurerm_resource_group.sub3.name
}

output "sub3_storage_account_name" {
  description = "Storage account name in Subscription 3"
  value       = azurerm_storage_account.sub3.name
}
