data "azurerm_resource_group" "rg" {
  name     = "github-actions-resources"
  location = "Italy North"
}

data "azurerm_storage_account" "state" {
  name = "gitactionsstatekbtest"
  resource_group_name = data.azurerm_resource_group.rg.name
}