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

# Add this section to fetch the resource group
data "azurerm_resource_group" "example" {
  name = "stanuku-rg"  # Replace with your resource group's name
}

output "resource_group_name" {
  value = data.azurerm_resource_group.example.name
}

output "resource_group_id" {
  value = data.azurerm_resource_group.example.id
}
