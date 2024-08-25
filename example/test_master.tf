module "kubemaster" {
  source = "../server"

  hcloud_token = var.HCLOUD_API_TOKEN
  project      = var.project
  env          = "master"

  server_count = 1
  server_type  = var.server_type

  region = var.region

  network_id  = module.kubenetwork.network_id
  firewall_id = module.kubenetwork.firewall_id
  server_ips  = ["10.0.100.97"]

  ssh_key_pub = var.ssh_key_pub

  cloud_init = "./cloud-init/master.yaml"
}
