variable "location" {
  description = "The location where resources will be created"
  default     = "eastus"
}
variable "resourceGroupName" {
  description = "Where the resources will be billed and allocated for categorical destruction"
  default     = "yourTestResourceGroup"
  type        = string
}

