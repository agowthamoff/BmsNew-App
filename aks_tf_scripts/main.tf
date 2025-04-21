resource "azurerm_resource_group" "tf-aks-rg" {
  name = var.resource-group_name
  location = var.location
}