# ──────────────────────────────────────────────────────────────
# Provider configuration – one aliased azurerm per subscription
# ──────────────────────────────────────────────────────────────

terraform {
  required_version = ">= 1.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 5.0.0"
    }
  }
}

# ---------- Subscription 1 ----------
provider "azurerm" {
  alias                = "sub1"
  subscription_id      = var.subscription_id_1
  storage_use_azuread  = true
  features {}
}

# ---------- Subscription 2 ----------
provider "azurerm" {
  alias                = "sub2"
  subscription_id      = var.subscription_id_2
  storage_use_azuread  = true
  features {}
}

# ---------- Subscription 3 ----------
provider "azurerm" {
  alias                = "sub3"
  subscription_id      = var.subscription_id_3
  storage_use_azuread  = true
  features {}
}
