
# Create Azure Resource Group
resource "azurerm_resource_group" "hari_resource_group" {
  name     = "hari-resource-group"
  location = "East US"
}

# Create Azure Container Registry (ACR)
resource "azurerm_container_registry" "hari_acr" {
  name                = "hariacr"
  resource_group_name = azurerm_resource_group.hari_resource_group.name
  location            = azurerm_resource_group.hari_resource_group.location
  sku                 = "Basic"
  admin_enabled       = true
}

# Create Azure Kubernetes Service (AKS)
resource "azurerm_kubernetes_cluster" "hari_aks_cluster" {
  name                = "hari-aks-cluster"
  location            = azurerm_resource_group.hari_resource_group.location
  resource_group_name = azurerm_resource_group.hari_resource_group.name
  dns_prefix          = "hari-k8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

output "acr_name" {
  value = azurerm_container_registry.hari_acr.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.hari_aks_cluster.name
}
