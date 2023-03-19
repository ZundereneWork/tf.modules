variable "name" {
  type = string
}

variable "loc" {
  type = string
}

variable "cont" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "version_aks" {
  type = string
}

variable "service_cidr" {
  type = string
}

variable "dns_service_ip" {
  type = string
}

variable "pod_cidr" {
  type = string
}

variable "size" {
  type = string
}

variable "numNodes" {
  type = number
}

variable "type" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "maxNode" {
  type = number
}

variable "disk_size_gb" {
  type = number
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "list_add_group_ids" {
  type = list(string)
}

variable "azurerm_container_registry_id" {
  type = string
}
