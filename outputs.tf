output "spoke_vnet_id" {
  value = azurerm_virtual_network.s_vnet.id
  description = "Spoke VNet ID for Network team peering activites."
}

output "spoke_rg_name" {
  value = azurerm_resource_group.s_vnet.name
  description = "Spoke RG ID for Network team peering activites."

}

output "spoke_vnet_name" {
  value = azurerm_virtual_network.s_vnet.name
  description = "Spoke VNet name for Network team peering activites."
}