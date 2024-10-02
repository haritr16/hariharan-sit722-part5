provider "azurerm" {
  features {}
}

# Create Resource Group
resource "azurerm_resource_group" "hari_resource_group" {
  name     = "hari-resource-group"
  location = "East US"
}

# Create Azure Container Registry
resource "azurerm_container_registry" "hari_acr" {
  name                = "hari-acr"
  resource_group_name = azurerm_resource_group.hari_resource_group.name
  location            = azurerm_resource_group.hari_resource_group.location
  sku                 = "Basic"
  admin_enabled       = true
}

# Create Kubernetes Cluster
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
