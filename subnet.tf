resource "azurerm_subnet" "MyPersonalSubnet" {
    name                 = "MyNameSubnet"
    resource_group_name  = "${var.location}"
    virtual_network_name = "${azurerm_virtual_network.MyVNet.name}"
    address_prefix       = "10.109.250.0/25"
}
