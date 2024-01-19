# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id            = "53a6eb70-4417-401a-9795-73f1e70b6836"
  tenant_id                  = "fd7917ad-0df6-4fef-9049-4a04ea10392c"
  skip_provider_registration = true
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name     = "my-demo-rg1"
}

#refering state file in azure
terraform {
  backend "azurerm" {
    storage_account_name = "cs210032003424ea32b"
    container_name       = "state"
    key                  = "statefile.tfstate"
    access_key           = "wkUuucrCO0nrp2SZniGXXQehuWN6UTfivbNwyw14AWoLgDktVsxpaOKIjbaTYyl/heWAUaDdItW4+AStFGHgZA=="
  }
}
