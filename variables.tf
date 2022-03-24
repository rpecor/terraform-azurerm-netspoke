variable "resource_group_name" {
  description = "Resource group Name"
  type = string
}

variable "location" {
  description = "Region to be created"
}

variable "team_name" {
  description = "Team name for tagging"
  type = string
}

variable "tags" {
  description = "Tags for resources."
  type = map(any)
}

variable "v_name" {
  description = "Name of VNet"
  type = string
}

variable "v_cidr" {
  description = "CIDR range for VNet"
  type = string
}

variable "nsg_name" {
  description = "nsg name"
  type = string
}