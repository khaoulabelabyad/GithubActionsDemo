resource "azurerm_storage_container" "state_container" {
  name                  = "github-actions-state"
  storage_account_name  = data.azurerm_storage_account.state.name
  container_access_type = "private"
}