module "rg" {
  source = "../../modules/rg"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "vnet" {
  source = "../../modules/vnet"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  address_space       = var.address_space
  aks_subnet_name     = var.aks_subnet_name
  aks_subnet_prefixes = var.aks_subnet_prefixes
  tags                = var.tags

  depends_on = [module.rg]
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.vnet.aks_subnet_id
  tags                = var.tags

  depends_on = [module.vnet]
}