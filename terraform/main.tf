provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}

output "subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}
