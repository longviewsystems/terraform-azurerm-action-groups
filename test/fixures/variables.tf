# Read in from environment variables

# Action Group Variables
variable "action_group_name" {
  description = "The name of the Azure Monitor Action Group."
  type        = string
}

variable "short_name" {
  description = "The short name of the Action Group."
  type        = string
}

variable "email_address" {
  description = "The email address to receive alerts."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the Action Group."
  type        = map(string)
}

variable "email_receiver_name" {
  description = "The name of the email receiver."
  type        = string
}