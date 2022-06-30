resource "azurerm_resource_group" "rgp" {
    name = var.resource_group_name
    location = var.resource_group_location
}

resource "azurerm_virtual_network" "vn" {
    name = var.virtual_network_name
    location = var.resource_group_location
    resource_group_name = var.resource_group_name
    address_space = var.address_space
    depends_on = [
      azurerm_resource_group.rgp
    ]
    subnet {
        name = "subnet1"
        address_prefix = var.subnet1
    }
    subnet {
        name = "subnet2"
        address_prefix = var.subnet2
    }
}
