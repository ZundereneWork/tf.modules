resource "azurerm_kubernetes_cluster" "aks" {
  name                  = "${var.name}-aks-${var.loc}-${var.cont}"
  dns_prefix            = "${var.name}-dns-${var.loc}-${var.cont}"
  node_resource_group   = "${var.name}-node-${var.loc}-${var.cont}"
  location              = var.location
  resource_group_name   = var.resource_group_name


  default_node_pool {
    name                    = "${var.name}"
    vm_size                 = var.size
    node_count              = var.numNodes
    max_count               = 2
    vnet_subnet_id          = var.subnet_id
    os_disk_size_gb         = var.disk_size_gb
    enable_node_public_ip   = false
    orchestrator_version    = var.kubernetes_version
    enable_auto_scaling     = true
 }



 service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  azure_active_directory_role_based_access_control {
    managed = true
    admin_group_object_ids = concat([], var.list_add_group_ids)
  }
}