resource "azurerm_network_interface" "example" {
    for_each = var.nic
  name                = each.value.nic-name
  location            = each.value.location
  resource_group_name = each.value.rg-name

  ip_configuration {
    name                          = each.value.ipconfig-name
    subnet_id                     = data.azurerm_subnet.data_subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}