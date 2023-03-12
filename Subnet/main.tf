resource "azurerm_subnet" "aks_subnet" {
  name                = "${var.name}-subnet-${var.loc}-${var.count}"
  address_prefixes     = [var.aks_service_cidr]
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}