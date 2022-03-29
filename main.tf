resource "azurerm_resource_group" "s_vnet_rg" {
  name = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "s_vnet" {
  name = var.v_name
  location = var.location
  resource_group_name = azurerm_resource_group.s_vnet_rg.name
  address_space = [var.v_cidr]
  dns_servers = var.dns_servers

  tags = var.tags
}

resource "azurerm_network_security_group" "s_nsg" {
  name = var.nsg_name
  location = var.location
  resource_group_name = azurerm_resource_group.s_vnet_rg.name

  tags = var.tags
}

resource "azurerm_subnet" "spoke_subnet" {
  for_each = {
    for name, key in var.subnets : name => key 
  }
  name = "${each.value.subnet_name}"
  address_prefixes = [each.value.address_prefix]
  resource_group_name = azurerm_resource_group.s_vnet_rg.name
  virtual_network_name = azurerm_virtual_network.s_vnet.name
}
