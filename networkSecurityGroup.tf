resource "azurerm_network_security_group" "NSGNameToUseInCode" {
    name                = "NSGNameToSeeInPortal"
    location            = "${var.location}"
    resource_group_name = "${azurerm_resource_group.resourceGroupHandle.name}"
    
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        destination_address_prefix = "*"
        source_address_prefix      = "VirtualNetwork"
    }
  tags = {
    environment = "development"
    }
}
