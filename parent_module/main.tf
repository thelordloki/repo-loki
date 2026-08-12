module "resource_group" {
  source = "../child_module/resource_group"
  rgs    = var.resource_group
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../child_module/virtual_network"
  vnet       = var.vnet-test
}
module "subnet" {
  depends_on  = [module.virtual_network]
  source      = "../child_module/subnet"
  subnet-test = var.subnets
}

module "public-ip" {
  depends_on = [module.resource_group]
  source     = "../child_module/public_IP"
  public-ip  = var.public_IP

}

module "network_interface" {
  depends_on = [module.subnet]
  source     = "../child_module/Network_Interface"
  nic        = var.nic
}

module "virtual_machine" {
  depends_on = [module.network_interface]
  source     = "../child_module/virtual_machine"
  vms        = var.vms

}
