resource "azurerm_kubernetes_cluster" "aks" {
  name                  = "${var.name}-aks-${var.loc}-${var.cont}"
  dns_prefix            = "${var.name}-dns-${var.loc}-${var.cont}"
  node_resource_group   = "${var.name}-node-${var.loc}-${var.cont}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  kubernetes_version    = var.version_aks


  default_node_pool {
    name                    = "${var.name}-default-np"
    vm_size                 = var.size
    node_count              = var.numNodes
    vnet_subnet_id          = var.subnet_id
    os_disk_size_gb         = var.disk_size_gb
    enabled_node_public_ip  = false
    orchestrator_version    = var.kubernetes_version
 }


 service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  azure_active_directory_role_based_access_control {
    managed = true
    admin_group_object_ids = concat([], var.list_add_group_ids)
  }

  addon_profile {
    azure_policy {
      enabled = true
    }
  }
}


resource "azurerm_role_assignment" "aks_acrpull" {
  scope              = var.azurerm_container_registry_id
  role_definition_id = "/subscriptions/910c5d1c-f32e-48a9-8068-a94718a51840/providers/Microsoft.Authorization/roleDefinitions/69e1f4b9-eb29-42b2-afd4-4b0c986de60c" //ID del role AcrPull
  principal_id       = "${azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id}"
}
