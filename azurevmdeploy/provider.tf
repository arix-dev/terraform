terraform {
required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.80.0"
    }
  }
}

provider "azurerm" {
 features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rwcancentral"
  location = "Canada Central"
}

