output "spoke_vnet_id" {
  value = azurerm_virtual_network.s_vnet.id
  description = "Spoke VNet ID for Network team peering activites."
}

output "spoke_rg_name" {
  value = azurerm_resource_group.s_vnet_rg.name
  description = "Spoke RG ID for Network team peering activites."

}

output "spoke_vnet_name" {
  value = azurerm_virtual_network.s_vnet.name
  description = "Spoke VNet name for Network team peering activites."
}

output "subnet_id" {
  description = "output subnet IDs"
  value = values(azurerm_subnet.spoke_subnet)[*].id
}

output "subnet_name" {
  description = "output subnet names"
  value = values(azurerm_subnet.spoke_subnet)[*].name
}