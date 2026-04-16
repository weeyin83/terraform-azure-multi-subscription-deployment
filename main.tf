# ──────────────────────────────────────────────────────────────
# Resources – Resource Group + Storage Account per subscription
# ──────────────────────────────────────────────────────────────
#
# Each subscription gets its own:
#   • azurecaf_name for the resource group  (prefix "rg-")
#   • azurecaf_name for the storage account (prefix "st", random suffix)
#   • azurerm_resource_group
#   • azurerm_storage_account
# ──────────────────────────────────────────────────────────────


# ============================================================
#  Subscription 1
# ============================================================

resource "azurecaf_name" "rg_sub1" {
  name          = var.prefix
  resource_type = "azurerm_resource_group"
  suffixes      = ["sub1"]
  clean_input   = true
}

resource "azurecaf_name" "sa_sub1" {
  name          = var.prefix
  resource_type = "azurerm_storage_account"
  suffixes      = ["sub1"]
  random_length = 5
  clean_input   = true
}

resource "azurerm_resource_group" "sub1" {
  provider = azurerm.sub1
  name     = azurecaf_name.rg_sub1.result
  location = var.location_1
}

resource "azurerm_storage_account" "sub1" {
  provider                  = azurerm.sub1
  name                      = azurecaf_name.sa_sub1.result
  resource_group_name       = azurerm_resource_group.sub1.name
  location                  = azurerm_resource_group.sub1.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  account_kind               = "StorageV2"
  https_traffic_only_enabled  = true
  min_tls_version             = "TLS1_2"
}


# ============================================================
#  Subscription 2
# ============================================================

resource "azurecaf_name" "rg_sub2" {
  name          = var.prefix
  resource_type = "azurerm_resource_group"
  suffixes      = ["sub2"]
  clean_input   = true
}

resource "azurecaf_name" "sa_sub2" {
  name          = var.prefix
  resource_type = "azurerm_storage_account"
  suffixes      = ["sub2"]
  random_length = 5
  clean_input   = true
}

resource "azurerm_resource_group" "sub2" {
  provider = azurerm.sub2
  name     = azurecaf_name.rg_sub2.result
  location = var.location_2
}

resource "azurerm_storage_account" "sub2" {
  provider                  = azurerm.sub2
  name                      = azurecaf_name.sa_sub2.result
  resource_group_name       = azurerm_resource_group.sub2.name
  location                  = azurerm_resource_group.sub2.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  account_kind               = "StorageV2"
  https_traffic_only_enabled  = true
  min_tls_version             = "TLS1_2"
}


# ============================================================
#  Subscription 3
# ============================================================

resource "azurecaf_name" "rg_sub3" {
  name          = var.prefix
  resource_type = "azurerm_resource_group"
  suffixes      = ["sub3"]
  clean_input   = true
}

resource "azurecaf_name" "sa_sub3" {
  name          = var.prefix
  resource_type = "azurerm_storage_account"
  suffixes      = ["sub3"]
  random_length = 5
  clean_input   = true
}

resource "azurerm_resource_group" "sub3" {
  provider = azurerm.sub3
  name     = azurecaf_name.rg_sub3.result
  location = var.location_3
}

resource "azurerm_storage_account" "sub3" {
  provider                    = azurerm.sub3
  name                        = azurecaf_name.sa_sub3.result
  resource_group_name         = azurerm_resource_group.sub3.name
  location                    = azurerm_resource_group.sub3.location
  account_tier                = "Standard"
  account_replication_type    = "LRS"
  account_kind                = "StorageV2"
  https_traffic_only_enabled  = true
  min_tls_version             = "TLS1_2"
}
