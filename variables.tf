//resource_group
variable "resource_name" {
  description = "The name of the Resource Group in which to create the Load Balancer."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure Region where the Load Balancer should be created."
  type        = string
}

//public_ip
variable "public_ip_name" {
  description = " Specifies the name of the Public IP."
  type        = string
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4."
  type        = string
}

variable "public_ip_sku" {
  description = "The SKU of the Public IP."
  type        = string
}

variable "public_ip_sku_tier" {
  description = "The SKU Tier that should be used for the Public IP."
  type        = string

}

variable "allocation_method" {
  description = "Defines the allocation method for this IP address. "
  type        = string
}

//load_balancer 
variable "name" {
  description = " Specifies the name of the Load Balancer."
  type        = string
}

variable "sku" {
  description = " The SKU of the Azure Load Balancer."
  type        = string
}

variable "sku_tier" {
  description = "The SKU tier of this Load Balancer. "
  type        = string
}

variable "ip_name" {
  description = "Specifies the name of the frontend IP configuration."
  type        = string
}

//backend_address_pool

variable "backend_name" {
  description = "Specifies the name of the Backend Address Pool."
  type        = string

}

//lb_rule

variable "rule_name" {
  description = "Specifies the name of the LB Rule."
  type        = string
}

variable "protocol" {
  description = "The transport protocol for the external endpoint."
  type        = string
}

variable "frontend_port" {
  description = "The port for the external endpoint. "
  type        = number
}

variable "backend_port" {
  description = "The port used for internal connections on the endpoint. "
  type        = number
}

variable "idle_timeout_in_minutes" {
  description = "Specifies the idle timeout in minutes for TCP connections. "
  type        = number
}

variable "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule?"
  type        = bool
}

variable "enable_floating_ip" {
  description = "Are the Floating IPs enabled for this Load Balncer Rule? "
  type        = bool
}