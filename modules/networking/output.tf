output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}
output "rg_name" {
  value = azurerm_resource_group.example.name
}