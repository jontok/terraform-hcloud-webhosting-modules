output "firewall_id" {
  value = hcloud_firewall.firewall.id
  description = "Firewall id"
}

output "network_id" {
  value = hcloud_network.network.id
  description = "Network id"
}

