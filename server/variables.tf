variable "hcloud_token" {
  type = string
  sensitive = true
}

variable "project" {
  type = string
}

variable "env" {
  type = string
}

variable "region" {
  type = string
}

variable "ssh_key_pub" {
  type = string
}

variable "server_count" {
  type = string
}

variable "server_type" {
  type = string
}

variable "server_image" {
  type = string
  default = "ubuntu-22.04"
}

variable "server_keepdisk" {
  type = bool
  default = true
  description = "keep disk for easy resizing"
}

variable "firewall_id" {
  type = string
  description = "Firewall id"
}

variable "network_id" {
  type = string
  description = "Network id"
}

variable "server_ips" {
  type = list(string)
}

variable "ipv4" {
  type = bool
  description = "enable ipv4"
  default = false
}

variable "ipv6" {
  type = bool
  description = "enable ipv6"
  default = false
}

variable "cloud_init" {
  type = string
  default = ""
}
