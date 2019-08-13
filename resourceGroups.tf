resource "azurerm_resource_group" "resourceGroupHandle" { 
   name = "yourTestResourceGroup" 
   location = "${var.location}" 
   tags = { 
     environment = "development" 
   } 
} 
