terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.81.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name  = "rg-lokesh-backend"                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
  #   tenant_id            = "a623f88c-d893-4a6d-bf56-74c7b44582a8" # Can also be set via `ARM_TENANT_ID` environment variable.
  #   storage_account_name = "backendloki01"                        # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   container_name       = "tfstate"                              # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   key                  = "prod.terraform.tfstate"               # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  # }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "30835d31-da1c-48b2-b695-8d49f1a3f05d"
  features {}
}