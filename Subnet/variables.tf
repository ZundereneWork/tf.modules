variable "name" {
  type = string
}

variable "loc" {
  type = string
}

variable "cont" {
  type = number
}

variable "aks_network_cidr" {
  type        = list(string)
}

variable "virtual_network_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}
