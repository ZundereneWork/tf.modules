resource "azurerm_virtual_network" "vnet" {
  name                = "${var.name}-vnet-${var.loc}-${var.cont}"
  address_space       = [var.aks_network_cidr]
  location            = var.location
  resource_group_name = var.resource_group_name
}