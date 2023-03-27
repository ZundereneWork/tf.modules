variable "name" {
  description = "Nombre del clúster AKS"
  type        = string
}

variable "loc" {
  description = "Ubicación del clúster AKS"
  type        = string
}

variable "cont" {
  description = "Nombre de la cuenta de almacenamiento"
  type        = string
}

variable "location" {
  description = "Ubicación de los recursos de Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos de Azure"
  type        = string
}

variable "size" {
  description = "Tamaño de la máquina virtual para el clúster AKS"
  type        = string
}

variable "numNodes" {
  description = "Número de nodos del grupo de nodos AKS"
  type        = number
}

variable "subnet_id" {
  description = "ID de la subred en la que se creará el clúster AKS"
  type        = string
}

variable "disk_size_gb" {
  description = "Tamaño del disco OS de la máquina virtual para el clúster AKS"
  type        = number
}

variable "kubernetes_version" {
  description = "Versión de Kubernetes para el clúster AKS"
  type        = string
}

variable "client_id" {
  description = "ID del cliente principal"
  type        = string
}

variable "client_secret" {
  description = "Secreto del cliente principal"
  type        = string
}

variable "list_add_group_ids" {
  description = "Lista de IDs de grupo para roles de RBAC"
  type        = list(string)
}
