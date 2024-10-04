resource "azurerm_storage_account" "state" {
  name                      = "gitactionsstatekbtest"
  resource_group_name       = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier    = "Standard"
  account_replication_type  = "LRS"
}

resource "azurerm_storage_container" "state_container" {
  name                  = "github-actions-state"
  storage_account_name  = azurerm_storage_account.state.name
  container_access_type = "private"
}

terraform{
    backend "azurerm" {
      resource_group_name  = "github-actions-resources"
      storage_account_name = "gitactionsstatekbtest"
      container_name       = "github-actions-state"
      key                  = "vm_provisioning/terraform.tfstate"
      subscription_id = jsondecode(var.azure_credentials).subscriptionId
      client_id       = jsondecode(var.azure_credentials).clientId
      client_secret   = jsondecode(var.azure_credentials).clientSecret
      tenant_id       = jsondecode(var.azure_credentials).tenantId
  }
}