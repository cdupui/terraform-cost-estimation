# Specifiy the provider and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

# Configure the Microsoft Azure Provider


provider "azurerm" {
  features {}
  subscription_id = "6aa18476-1cde-4c21-868b-e0c5da8f588e"
  tenant_id = "10000000-0000-0000-0000-000000000000"
}

# Create the very first resource
resource "azurerm_resource_group" "contoso_rg" {
  name     = "contoso_rg"
  location = "UK South"

  tags = {
    cost_center = "contoso research"
  } 
}
