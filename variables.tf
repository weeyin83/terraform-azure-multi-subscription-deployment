# ──────────────────────────────────────────────────────────────
# Input variables
# ──────────────────────────────────────────────────────────────

variable "subscription_id_1" {
  description = "Azure Subscription ID for environment 1"
  type        = string
}

variable "subscription_id_2" {
  description = "Azure Subscription ID for environment 2"
  type        = string
}

variable "subscription_id_3" {
  description = "Azure Subscription ID for environment 3"
  type        = string
}

variable "location_1" {
  description = "Azure region for Subscription 1"
  type        = string
  default     = "switzerlandnorth"
}

variable "location_2" {
  description = "Azure region for Subscription 2"
  type        = string
  default     = "norwaywest"
}

variable "location_3" {
  description = "Azure region for Subscription 3"
  type        = string
  default     = "swedencentral"
}

variable "prefix" {
  description = "Project prefix fed into CAF naming (e.g. project or workload name)"
  type        = string
  default     = "demo"
}
