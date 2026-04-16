# ──────────────────────────────────────────────────────────────
# Resources – Resource Group + Storage Account per subscription
# ──────────────────────────────────────────────────────────────
#
# Each subscription gets its own:
#   • naming module instance (CAF-compliant names)
#   • azurerm_resource_group
#   • azurerm_storage_account
# ──────────────────────────────────────────────────────────────


# ============================================================
#  Naming module – CAF-compliant names per subscription
# ============================================================

# This ensures we have unique CAF compliant names for our resources.
module "naming_sub1" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"
  prefix  = [var.prefix]
  suffix  = ["sub1"]
}

module "naming_sub2" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"
  prefix  = [var.prefix]
  suffix  = ["sub2"]
}

module "naming_sub3" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"
  prefix  = [var.prefix]
  suffix  = ["sub3"]
}


# ============================================================
#  Subscription 1
# ============================================================

resource "azurerm_resource_group" "sub1" {
  provider = azurerm.sub1
  name     = module.naming_sub1.resource_group.name
  location = var.location_1
}

resource "azurerm_storage_account" "sub1" {
  provider                  = azurerm.sub1
  name                      = module.naming_sub1.storage_account.name_unique
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

resource "azurerm_resource_group" "sub2" {
  provider = azurerm.sub2
  name     = module.naming_sub2.resource_group.name
  location = var.location_2
}

resource "azurerm_storage_account" "sub2" {
  provider                  = azurerm.sub2
  name                      = module.naming_sub2.storage_account.name_unique
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

resource "azurerm_resource_group" "sub3" {
  provider = azurerm.sub3
  name     = module.naming_sub3.resource_group.name
  location = var.location_3
}

resource "azurerm_storage_account" "sub3" {
  provider                    = azurerm.sub3
  name                        = module.naming_sub3.storage_account.name_unique
  resource_group_name         = azurerm_resource_group.sub3.name
  location                    = azurerm_resource_group.sub3.location
  account_tier                = "Standard"
  account_replication_type    = "LRS"
  account_kind                = "StorageV2"
  https_traffic_only_enabled  = true
  min_tls_version             = "TLS1_2"
}
