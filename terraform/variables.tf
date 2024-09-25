# variables.tf

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
  default     = "myResourceGroup"
}

variable "location" {
  type        = string
  description = "Azure location for resources."
  default     = "East US"
}