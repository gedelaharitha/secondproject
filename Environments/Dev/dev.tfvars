resource_group_name = "dev-rg"
location            = "eastus"

vnet_name           = "dev-vnet"
address_space       = ["10.0.0.0/8"]
aks_subnet_name     = "dev-aks-subnet"
aks_subnet_prefixes = ["10.240.0.0/16"]

cluster_name = "dev-aks"
dns_prefix   = "dev-aks"
node_count   = 2
vm_size      = "Standard_D2s_v3"

tags = {
  environment = "dev"
  managed_by  = "terraform"
}