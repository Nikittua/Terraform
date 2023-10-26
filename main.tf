variable "instance_count" {
  type    = number
  default = 2
}

resource "openstack_compute_instance_v2" "instance" {
  count = var.instance_count

  name            = "instance-${count.index + 1}"
  image_name      = "Mekstack Ubuntu 22.04.3 LTS"
  flavor_name     = "m2s.small"
  security_groups = ["default"]

  network {
    uuid = openstack_networking_network_v2.network[count.index].id
  }

  depends_on = [openstack_networking_subnet_v2.subnet]
}


