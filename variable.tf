variable "resource_group_name" {
}

variable "resource_group_location" {
}

variable "virtual_network_name" {
}

variable "address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet1" {
}

variable "subnet2" {
}
