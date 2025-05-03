# VPC
resource "mgc_network_vpcs" "mine_server"{
  provider = mgc
  name = "mine_server"
  description = "vpc for the mine server"
}

# Public IP
resource "mgc_network_public_ips" "mine_server" {
  provider = mgc
  description = "http server public ip"
  vpc_id      = mgc_network_vpcs.mine_server.id
}

resource "mgc_network_public_ips_attach" "mine_server" {
  provider = mgc
  public_ip_id = mgc_network_public_ips.mine_server.id
  interface_id = mgc_virtual_machine_instances.mine_server.network_interfaces[0].id
}

# Security Group
resource "mgc_network_security_groups" "mine_server_security_group" {
  provider = mgc
  name = "mine_server_security_group"
}

resource "mgc_network_security_groups_rules" "mine_server_allow_ssh" {
  provider = mgc
  direction         = "ingress"
  ethertype         = "IPv4"
  port_range_max    = 22
  port_range_min    = 22
  protocol          = "tcp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = mgc_network_security_groups.mine_server_security_group.id
}

resource "mgc_network_security_groups_rules" "mine_server_allow_server" {
  provider = mgc
  direction         = "ingress"
  ethertype         = "IPv4"
  port_range_max    = 19132
  port_range_min    = 19132
  protocol          = "udp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = mgc_network_security_groups.mine_server_security_group.id
}

resource "mgc_network_security_groups_rules" "mine_server_allow_server_tcp" {
  provider = mgc
  direction         = "ingress"
  ethertype         = "IPv4"
  port_range_max    = 19132
  port_range_min    = 19132
  protocol          = "tcp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = mgc_network_security_groups.mine_server_security_group.id
}

resource "mgc_network_security_groups_attach" "mine_server" {
  provider = mgc
  security_group_id = mgc_network_security_groups.mine_server_security_group.id
  interface_id = mgc_virtual_machine_instances.mine_server.network_interfaces[0].id
}
