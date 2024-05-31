# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm  = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0" #version in production
    }
  }
  
}

# Configure the Microsoft Azure Provider
/* multi line comment
*/
provider "azurerm" {
  #delete_vm_but_do_not_delete_storage  asdas
  #skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  /*subscription_id   = "<azure_subscription_id>"
  tenant_id         = "<azure_subscription_tenant_id>"
  client_id         = "<service_principal_appid>"
  client_secret     = "<service_principal_password>"*/
}