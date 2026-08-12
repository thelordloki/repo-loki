resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.vms
  name                = each.value.vm_name
  resource_group_name = each.value.rg-name
  location            = each.value.location
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.data_nic[each.key].id
  ]
#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}