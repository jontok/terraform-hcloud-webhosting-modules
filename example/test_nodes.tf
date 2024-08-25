module "kubenode" {
  source = "../server"

  hcloud_token = var.HCLOUD_API_TOKEN
  project      = var.project
  env          = "node"

  server_count = var.node_count
  server_type  = var.server_type

  region = var.region

  network_id  = module.kubenetwork.network_id
  firewall_id = module.kubenetwork.firewall_id
  server_ips  = var.ip_addresses

  ssh_key_pub = "node"
  ssh_key_ids = [module.kubemaster.ssh_key_id]

  cloud_init = "./cloud-init/node.yaml"
}
