terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"

    }

  }

  backend "azurerm" {
      resource_group_name  = "github-actions-resources"
      storage_account_name = "gitactionsstatekbtest"
      container_name       = "github-actions-state"
      key                  = "vm_provisioning/terraform.tfstate"
  }
} 

provider "azurerm" {
  features {}
}



