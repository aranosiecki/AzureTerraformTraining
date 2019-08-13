resource "azurerm_public_ip" "mynamepublicip" {
    name                         = "myPublicIP"
    location                     = "${var.location}"
    resource_group_name          = "${azurerm_resource_group.resourceGroupHandle.name}"
    allocation_method            = "Dynamic"

  tags = {
    environment = "development"
    }
}
