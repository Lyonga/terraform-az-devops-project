terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfdemo-env01-rg"
    storage_account_name = "chrldemostorageaccount"
    container_name       = "tfstate"
    key                  = "tfdemo.env01.tfstate"
  }
}

provider "azurerm" {
  features {}
}