terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.80"
    }
  }
  backend "azurerm" {
    resource_group_name  = "demo-rg"
    storage_account_name = "storageprodfile"
    container_name       = "democontainer"
    key                  = "prod.tfstate"

  }
}
provider "azurerm" {
  features {

  }

}