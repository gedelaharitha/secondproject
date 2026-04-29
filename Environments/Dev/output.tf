output "resource_group_name" {
  value = module.rg.resource_group_name
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "aks_subnet_id" {
  value = module.vnet.aks_subnet_id
}

output "cluster_name" {
  value = module.aks.cluster_name
}

output "cluster_fqdn" {
  value = module.aks.cluster_fqdn
}

output "kube_config_raw" {
  value     = module.aks.kube_config_raw
  sensitive = true
}