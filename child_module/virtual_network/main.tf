resource "azurerm_virtual_network" "vnet" {
   
    for_each = var.vnet
  name                = each.value.vnet-name
  location            = each.value.location
  resource_group_name = each.value.rg-name
  address_space       = each.value.address_space
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]

}