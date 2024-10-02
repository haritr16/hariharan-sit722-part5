output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.hari_aks_cluster.name
}

output "acr_name" {
  value = azurerm_container_registry.hari_acr.name
}
