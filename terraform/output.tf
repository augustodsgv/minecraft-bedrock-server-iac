output "server_public_ip" {
  value = mgc_network_public_ips.mine_server.public_ip
}

resource "local_file" "ansible_inventory" {
  filename = "../ansible/inventory.yaml"
  content = templatefile("inventory.yaml.tmpl", {
      server_public_ip = mgc_network_public_ips.mine_server.public_ip
  })
  
}