provider "azurerm" {
  features {}
  subscription_id = var.subscription_id   # Use a variable for flexibility
}


data "azurerm_subscription" "current" {}

output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}

output "subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}
