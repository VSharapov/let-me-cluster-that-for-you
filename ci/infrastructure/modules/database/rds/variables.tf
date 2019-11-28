variable "aws_region" {
  type = "string"
  default = ""
}

variable "prefix" {
  type = "string"
  default = ""
}

variable "db_size_in_gb" {
  type = "string"
}

variable "postgres_version" {
  type = "string"
}

variable "db_instance_class" {
  type = "string"
}

variable "database_name" {
  type = "string"
}

variable "master_username" {
  type = "string"
}

variable "master_user_password" {
  type = "string"
}

variable "is_enabled" {
  type = "string"
  description = "Whether to db provider is enabled"
  default = "false"
}

variable "vpc_id" {
  type = "string"
  default = ""
}

variable "subnet_ids" {
  type = "string"
  default = ""
}

variable "securitygroup_ips" {
  type = "string"
  default = ""
}