##################################################################################################
### Terraform Init
##################################################################################################


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.97"
    }
  }
  #backend "azurerm" {
  #  resource_group_name = "terraform-state"
  #  storage_account_name = "srttfstate"
  #  container_name = "state"
  #  key = "dev.inrange-cloud-api.tfstate"
  #  subscription_id = "7399e158-d7a6-4421-872d-79df9badefca"
  #}
}

##################################################################################################
### Terraform Providers
##################################################################################################

provider "azurerm" {
  subscription_id = var.dev_subscription_id
  features {}
}

provider "azurerm" {
  alias = "test"
  subscription_id = var.test_subscription_id
  features {}
}

provider "azurerm" {
  alias = "prod"
  subscription_id = var.prod_subscription_id
  features {}
}

##################################################################################################
### Data
##################################################################################################

##################################################################################################
### Resources
##################################################################################################

resource "azurerm_resource_group" "tf-dorp" {
  name = "RS-rg-tf_dorp-dev"
  location = var.location
  tags = var.tags
}