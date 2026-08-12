resource "azurerm_public_ip" "public-ip" {
  for_each = var.public-ip
  name                = each.value.pip-name
  resource_group_name = each.value.rg-name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
}