terraform {
  backend "azurerm" {
    resource_group_name = "devbackendrg"
    storage_account_name = "devbackendstorage647"
    container_name = "mybackup"
    key = "dev.tfstate"
  }
}
