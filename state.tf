resource "azurerm_storage_container" "state_container" {
  name                  = "github-actions-state"
  storage_account_name  = data.azurerm_storage_account.state.name
  container_access_type = "private"
}

terraform{
    backend "azurerm" {
      resource_group_name  = "github-actions-resources"
      storage_account_name = "gitactionsstatekbtest"
      container_name       = "github-actions-state"
      key                  = "vm_provisioning/terraform.tfstate"
  }
}