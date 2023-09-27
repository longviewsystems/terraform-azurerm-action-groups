# terratest.tfvars

# Azure Monitor Action Group Variables
action_group_name = "ag-terratest-alert-action-group"
short_name        = "frewlalrt"
email_address     = "terratest@example.com"

# Tags as a map variable
tags = {
  environment = "test"
  owner       = "terratest"
}

# Email Receiver Name
email_receiver_name = "terratest-health-alert-email-receiver"
