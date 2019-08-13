resource "azurerm_virtual_network" "MyVNet" {
    name                = "MyNameVNet"
    address_space       = ["10.109.250.0/25"]
    location            = "${var.location}"
    resource_group_name = "${var.resourceGroupName}"
    dns_servers         = ["10.110.16.52", "10.108.253.92"]
}
