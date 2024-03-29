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

variable "ssh_port" {
  type = string
  default = "22"
}

variable "allowed_ips" {
  type = list(string)
}

variable "network_zone" {
  type = string
}

variable "ip_address" {
  type = string
}

variable "ip_range" {
  type = number
}
