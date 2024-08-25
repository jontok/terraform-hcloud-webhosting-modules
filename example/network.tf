module "kubenetwork" {
  source = "../network"

  hcloud_token = var.HCLOUD_API_TOKEN

  env        = var.env
  project    = var.project
  ip_range   = var.ip_range
  ip_address = var.network_ip_address


  allowed_ips  = var.allowed_ips
  network_zone = var.network_zone
}
