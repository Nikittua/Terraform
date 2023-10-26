output "vm-name" {
  value = "${openstack_compute_instance_v2.instance[*].name}"
}
 
output "vm-id" {
  value = "${openstack_compute_instance_v2.instance[*].id}"
}
 
output "vm-ips" {
  value = [for instance in openstack_compute_instance_v2.instance : instance.network[*].fixed_ip_v4]
}

output "subnt_1" {
        value = "${openstack_networking_subnet_v2.subnet[*].id}"
}