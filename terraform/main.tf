provider "azurerm" {
  features {}
  subscription_id = "ae6e5027-d51b-4ead-b090-1055273702f8"   # Use a variable for flexibility
}
  

data "azurerm_subscription" "current" {}

output "subscription_name" {
  value = data.azurerm_subscription.current.display_name
}

output "subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}
