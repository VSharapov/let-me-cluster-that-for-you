variable "cluster_db_name" {
  type = "string"
  default = ""
}

variable "az_region" {
  type = "string"
  default = ""
}
variable "provider_name" {
  type = "string"
}
variable "provider_prefix"{
  type = "string"
}

variable "is_enabled" {
  type = "string"
  description = "Determines if the database module should install a cluster manager"
  default = "true"
}

variable "cluster_db_vpc" {
  type = "string"
  default = ""
}

variable "cluster_db_subnets" {
  type = "string"
  default = ""
}

variable "cluster_db_securitygroup_ips" {
  type = "string"
  default = ""
}

variable "cluster_db_master_username"{
  type = "string"
  default = ""
}

variable "cluster_db_master_password"{
  type = "string"
  default = ""
}

variable "cluster_db_instance_class"{
  type = "string"
  default = ""
}

variable "cluster_db_postgres_version"{
  type = "string"
  default = ""
}

variable "cluster_db_size_in_gb"{
  type = "string"
  default = ""
}

variable "cluster_db_provider"{
  type = "string"
  default = ""
}