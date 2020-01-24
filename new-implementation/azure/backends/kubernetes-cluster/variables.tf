variable "log_analytics_workspace_id" {
  description = "The Log Analytics Workspace Id."
}

variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group."
}

variable "resource_group_name" {
  description = "The name of the Resource Group in which the Virtual Network"
}

variable "location" {
  description = "The Azure Region in which to create the Virtual Network"
}

variable "tags" {
  default     = {}
  description = "Any tags that should be present on the Virtual Network resources"
  type        = map(string)
}

variable "admin_username" {
  description = "The username of the local administrator to be created on the Kubernetes cluster"
}

# Uncomment to enable SSH access to nodes
#
# variable "public_ssh_key_path" {
#   description = "The Path at which your Public SSH Key is located. Defaults to ~/.ssh/id_rsa.pub"
#   default     = "~/.ssh/id_rsa.pub"
#}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
}

variable "agents_size" {
  description = "The Azure VM Size of the Virtual Machines used in the Agent Pool"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to install"
  default     = "1.11.3"
}

variable "service_principal_client_id" {
  description = "The Client ID of the Service Principal assigned to Kubernetes"
}

variable "service_principal_client_secret" {
  description = "The Client Secret of the Service Principal assigned to Kubernetes"
}

