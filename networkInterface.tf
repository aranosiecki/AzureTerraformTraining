resource "azurerm_network_interface" "MyNICHandleToReferToInCode" {
  name                = "TheNameThatShowsInPortal-NIC"
  location            = "${var.location}"
  resource_group_name = "${var.resourceGroupName}"
  network_security_group_id = "${azurerm_network_security_group.NSGNameToUseInCode.id}"
  ip_configuration {
    name                          = "myNamePrivateIP"
    subnet_id                     = "${azurerm_subnet.MyPersonalSubnet.id}"
    private_ip_address_allocation = "Dynamic"
  }
}
