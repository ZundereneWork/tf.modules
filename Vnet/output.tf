output "vnet_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  description = "CIDR block for the virtual network"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_location" {
  description = "Location of the virtual network"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_virtual_network.vnet.resource_group_name
}
