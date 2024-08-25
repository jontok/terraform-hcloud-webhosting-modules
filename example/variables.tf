variable "HCLOUD_API_TOKEN" {}

variable "env" {
  description = "Environment name"
  type        = string
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "ip_range" {
  description = "IP range as in 0.0.0.0/24"
  type        = number
}

variable "ip_addresses" {
  description = "List of IP addresses"
  type        = list(string)
}

variable "network_ip_address" {
  description = "Network IP address"
  type        = string
}

variable "allowed_ips" {
  description = "List of allowed IPs"
  type        = list(string)
}

variable "network_zone" {
  description = "Network zone"
  type        = string
}

variable "region" {
  type = string
}

variable "ssh_key_pub" {
  type = string
}

variable "node_count" {
  type = string
}

variable "server_type" {
  type = string
}

variable "server_image" {
  type    = string
  default = "ubuntu-22.04"
}

variable "server_keepdisk" {
  type        = bool
  default     = true
  description = "keep disk for easy resizing"
}

variable "cloud_init" {
  type    = string
  default = ""
}
