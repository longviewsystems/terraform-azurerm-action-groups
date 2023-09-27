# Terraform module for creating an Azure Action Group

resource "azurerm_monitor_action_group" "action_group" {
  name                = var.action_group_name
  resource_group_name = var.alert_resource_group_name
  short_name          = var.short_name

  email_receiver {
    name                    = var.email_receiver_name
    email_address           = var.email_address
    use_common_alert_schema = false
  }

  tags = var.tags
}