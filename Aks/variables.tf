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

variable "kubernetes_version" {
  type = string
}

variable "size" {
  type = string
}

variable "numNodes" {
  type = number
}

variable "subnet_id" {
  type = string
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
