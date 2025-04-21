variable "azure_subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "azure_client_id" {
  description = "The Azure client ID"
  type        = string
}

variable "azure_client_secret" {
  description = "The Azure client secret"
  type        = string
}

variable "azure_tenant_id" {
  description = "The Azure tenant ID"
  type        = string
}

variable "location" {
  description = "Location/Zone where the resources will be created"
  type        = string
  default     = "Central India"
}

variable "resource-group_name" {
  description = "Default Resource Group name"
  type        = string
  # default     = <typre of script>-<what need to be created at the end>-<project name>-<Kind of resource>
  default     = "tf-aks-bms-rg"
}