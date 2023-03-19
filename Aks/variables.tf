variable "name" {
  type        = string
  description = "The name of the AKS cluster."
}

variable "loc" {
  type        = string
  description = "The location where the AKS cluster will be created."
}

variable "count" {
  type        = string
  description = "A count used to generate unique resource names."
}

variable "location" {
  type        = string
  description = "The location where the resource group will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group that the AKS cluster will be created in."
}

variable "version_aks" {
  type        = string
  description = "The version of Kubernetes to use for the AKS cluster."
}

variable "service_cidr" {
  type        = string
  description = "The CIDR block used for Kubernetes services."
}

variable "dns_service_ip" {
  type        = string
  description = "The IP address used for Kubernetes DNS services."
}

variable "pod_cidr" {
  type        = string
  description = "The CIDR block used for Kubernetes pods."
}

variable "size" {
  type        = string
  description = "The size of the virtual machines used in the default node pool."
}

variable "numNodes" {
  type        = number
  description = "The number of nodes in the default node pool."
}

variable "type" {
  type        = string
  description = "The type of virtual machine used in the default node pool."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the default node pool will be created."
}

variable "maxNode" {
  type        = number
  description = "The maximum number of pods that can run on a node."
}

variable "disk_size_gb" {
  type        = number
  description = "The size of the OS disk in the default node pool."
}

variable "aget_pool_subnet_id" {
  type        = string
  description = "The ID of the subnet where the agent pool will be created."
}

variable "network_plugin" {
  type        = string
  description = "The network plugin used for the AKS cluster."
}

variable "load_balance_sku" {
  type        = string
  description = "The SKU of the load balancer used for the AKS cluster."
}

variable "outbound_type" {
  type        = string
  description = "The outbound type used for the AKS cluster."
}

variable "network_policy" {
  type        = string
  description = "The network policy used for the AKS cluster."
}

variable "ip_range_pod" {
  type        = string
  description = "The IP range used for Kubernetes pods when the network policy is 'kubenet'."
}

variable "client_id" {
  type        = string
  description = "The client ID of the service principal used to manage the AKS cluster."
}

variable "client_secret" {
  type        = string
  description = "The client secret of the service principal used to manage the AKS cluster."
}

variable "azurerm_container_registry_id" {
  type        = string
  description = "The ID of the Azure Container Registry to grant pull access to the AKS cluster."
}

variable "list_add_group_ids" {
  type        = list(string)
  description = "A list of Azure AD group IDs to add as admins for the AK
