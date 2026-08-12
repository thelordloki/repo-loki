data "azurerm_subnet" "data_subnet" {
    for_each = var.nic
  name                 = each.value.subnet-name
  virtual_network_name = each.value.vnet-name
  resource_group_name  = each.value.rg-name
}

data "azurerm_public_ip" "pip" {
  for_each = var.nic

  name                = each.value.pip-name
  resource_group_name = each.value.rg-name
}

