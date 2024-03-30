resource "hcloud_ssh_key" "default" {
  name       = "${var.project}-${var.env}-key"
  public_key = file("${var.ssh_key_pub}.pub")
}

resource "hcloud_server" "server" {
  count        = var.server_count
  name         = "${var.project}-${var.env}-${count.index}-server"
  image        = "ubuntu-22.04"
  server_type  = var.server_type
  location     = var.region
  firewall_ids = [var.network_id]
  ssh_keys     = ["${hcloud_ssh_key.default.id}"]
  
  
  user_data   = var.cloud_init!="" ? file(var.cloud_init) : ""
    
  

  network {
    network_id = var.network_id
    ip         = var.server_ips[count.index]
  }
  
  public_net {
    ipv4_enabled = var.ipv4
    ipv6_enabled = var.ipv4
  }
}

