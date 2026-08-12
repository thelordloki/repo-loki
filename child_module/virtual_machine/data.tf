data "azurerm_network_interface" "data_nic" {
for_each = var.vms
  name                = each.value.nic-name
  resource_group_name = each.value.rg-name
}