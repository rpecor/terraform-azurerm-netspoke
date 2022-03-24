resource "azure_resource_group" "s_vnet" {
  name = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "s_vnet" {
  name = var.v_name
  location = var.location
  resource_group_name = azure_resource_group.s_vnet.name
  address_space = [var.v_cidr]

  tags = var.tags
}

resource "azurerm_network_security_group" "s_nsg" {
  name = var.nsg_name
  location = var.location
  resource_group_name = azurerm_resource_group.s_vnet.name

  tags = var.tags
}