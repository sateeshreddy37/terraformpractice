# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
}
# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account
provider "azurerm" {
  subscription_id  = "8582da1f-733d-4854-95c4-118a8c31f291"
  client_id        = "0e80291b-24e1-4cba-a8b1-d3e7992d2eba"
  client_secret    = "U_L8Q~3UlTE_o-TVU5Rp3o5PGcVcV58Zxuzz9b-C"
  tenant_id        = "72faf5a2-675f-413f-b66b-a33b08b876f3"
  features{}
}
# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block
resource "azurerm_resource_group" "sateesh_grp" {
  name = "sateesh_grp"
  location = "North Europe" 
}