resource "azurerm_container_registry" "container_registry" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.hari.name
  location            = var.location
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_name" {
  value = azurerm_container_registry.container_registry.name
}

