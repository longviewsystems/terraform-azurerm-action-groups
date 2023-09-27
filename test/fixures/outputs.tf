output "action_group_id" {
  description = "The ID of the Azure Monitor Action Group."
  value       = azurerm_monitor_action_group.action_group.id
}