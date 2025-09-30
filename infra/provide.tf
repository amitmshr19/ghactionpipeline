terraform {
  backend "azurerm" {
    resource_group_name   = "rgsep"
    storage_account_name  = "sasepbackend"
    container_name        = "amitcontainer"
    key                   = "terraform.tfstate"
    use_azuread_auth     = true
  }
}                            ##for # ctrl+/


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "d9291a0a-9274-4334-a1b7-210c7a5eb2c6"
# client_id       = "xxxx-xxxx-xxxx-xxxx"
# client_secret   = "YOUR-SECRET"
# tenant_id       = "xxxx-xxxx-xxxx-xxxx"
}
