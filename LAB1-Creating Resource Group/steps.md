Overview of steps
Create a directory for your Terraform project and create a Terraform configuration file (usually named main.tf) in that directory. In this file, you define the AWS provider and resources you want to create. Here's a basic example:
---
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
---
Initialize Terraform**
In your terminal, navigate to the directory containing your Terraform configuration files and run:
---
terraform init
---
This command initializes the Terraform working directory, downloading any necessary provider plugins.

Apply the Configuration
Run the following command to create the AWS resources defined in your Terraform configuration:
---
terraform apply
---
Terraform will display a plan of the changes it's going to make. Review the plan and type "yes" when prompted to apply it.

Verify Resources
After Terraform completes the provisioning process, you can verify the resources created in the AWS Management Console or by using Azure CLI commands.
---
Destroy Resources
---
If you want to remove the resources created by Terraform, you can use the following command:
---
terraform destroy
---
Be cautious when using terraform destroy as it will delete resources as specified in your Terraform configuration.
