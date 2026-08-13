#resource_group
resource_group = {
  rg1 = {
    name     = "loki"
    location = "westus2"
  }
  
}
#virtual_network
vnet-test = {
  vnet1 = {
    vnet-name     = "vnet-loki"
    location      = "westus2"
    rg-name       = "loki"
    address_space = ["10.0.0.0/16"]
    #dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}
#subnet
subnets = {
  subnet1 = {
    subnet-name      = "subnet-frontend"
    rg-name          = "loki"
    vnet-name        = "vnet-loki"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet-name      = "subnet-backend"
    rg-name          = "loki"
    vnet-name        = "vnet-loki"
    address_prefixes = ["10.0.2.0/24"]
  }

}
#public_IP
public_IP = {
  public-ip1 = {
    pip-name          = "frontend-pip"
    location          = "westus2"
    allocation_method = "Static"
    rg-name           = "loki"
  }
}
#network-interface
nic = {
  nic1 = {
    nic-name                      = "nic-frontend"
    location                      = "westus2"
    rg-name                       = "loki"
    ipconfig-name                 = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet-name                   = "subnet-frontend"
    vnet-name                     = "vnet-loki"
    pip-name                      = "frontend-pip"
  }
}

vms = {
  vm1 = {
    vm_name        = "vmlinux"
    rg-name        = "loki"
    location       = "westus2"
    size           = "Standard_F2"
    admin_username = "adminloki"
    admin_password = "LLokesh&*4567"
    nic-name       = "nic-frontend"
  }
}

