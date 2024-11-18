terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.116.0, < 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.6"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~>1.15"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
