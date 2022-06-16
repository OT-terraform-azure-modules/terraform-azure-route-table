variable "resource_group_name" {
  description = "The variable for resource group name"
  type        = string
}

variable "route_table_location" {
  description = "The variable for route table location"
  type        = string
}

variable "route_table_name" {
 description = "The variable for route table name"
 type        = string
}

variable "route_names" {
 description =  "A list of public subnets inside the vNet"
 type        = list(string)
}

variable "route_address_prefix" {
 description = "The list of address prefixes to use for each route"
 type        = list(string)
}

variable "route_next_hope_type" {
 description = "The type of Azure hop the packet should be sent to for each corresponding route"
 type        = list(string)
}

variable "disable_bgp_route_propagation" {
 description = "Boolean flag which controls propagation of routes learned by BGP on that route table"
 type    =  bool 
 default  = false
}

variable "tags" {
 description = "tags for route table"
 type = map(string)
}

