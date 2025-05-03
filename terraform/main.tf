# SSH key
resource "mgc_ssh_keys" "mine_server_ssh_key" {
  provider = mgc
  key  = file(var.ssh_key_path)
  name = "mine_server_ssh_key"
}

resource "mgc_virtual_machine_instances" "mine_server" {
  provider = mgc
  name         = "mine_server"
  machine_type = var.machine_type
  image        = var.machine_image
  ssh_key_name = mgc_ssh_keys.mine_server_ssh_key.name
}