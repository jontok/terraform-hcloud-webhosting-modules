output "server" {
  value       = hcloud_server.server
  description = "server object"
}

output "ssh_key_id" {
  value       = hcloud_ssh_key.default.id
  description = "hcloud ssh key id"
}
