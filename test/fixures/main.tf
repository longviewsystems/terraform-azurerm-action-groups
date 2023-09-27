/***************************************************************/
/*** Terratest only resources
/***************************************************************/
module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.3.0"
  suffix  = ["terratest"]
}

# Create a resource group for the test
resource "azurerm_resource_group" "terratest_rg" {
  name     = module.naming.resource_group.name_unique
  location = "eastus"
}

# Terraform module for creating an Azure Action Group

resource "azurerm_monitor_action_group" "action_group" {
  name                = var.action_group_name
  resource_group_name = azurerm_resource_group.terratest_rg.name
  short_name          = var.short_name

  email_receiver {
    name                    = var.email_receiver_name
    email_address           = var.email_address
    use_common_alert_schema = false
  }

  tags = var.tags
}