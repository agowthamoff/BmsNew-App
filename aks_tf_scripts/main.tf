resource "azurerm_resource_group" "az-aks-rg" {
  name = var.resource-group_name
  location = var.location
}


resource "azurerm_kubernetes_cluster" "az-k8s-cluster" {
  name                = var.aks_cluster_name
  resource_group_name = azurerm_resource_group.az-aks-rg.name
  location            = azurerm_resource_group.az-aks-rg.location
  dns_prefix          = var.dns_prefix_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.node_size_name
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Terraform"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.az-k8s-cluster.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.az-k8s-cluster.kube_config_raw

  sensitive = true
}