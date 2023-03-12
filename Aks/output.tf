output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "aks_kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "aks_acrpull" {
  value = azurerm_role_assignment.aks_acrpull.id
}
