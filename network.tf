resource "yandex_vpc_network" "dev-vpc" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "subnet-a" {
  name           = var.subnet-a_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.dev-vpc.id
  v4_cidr_blocks = var.subnet-a_cidr
}

resource "yandex_vpc_subnet" "subnet-b" {
  name           = var.subnet-b_name
  zone           = var.zone
  network_id     = yandex_vpc_network.dev-vpc.id
  v4_cidr_blocks = var.subnet-b_cidr
  # route_table_id = yandex_vpc_route_table.dev-rt.id
}

#Create a new VPC Route Table.
# resource "yandex_vpc_route_table" "dev-rt" {
#   network_id = yandex_vpc_network.dev-vpc.id

  # static_route {
  #   destination_prefix = "0.0.0.0/0"
  #   next_hop_address   = yandex_compute_instance.nat-instance.network_interface[0].ip_address
  # }

  # static_route {
  #   destination_prefix = "0.0.0.0/0"
  #   gateway_id         = yandex_vpc_gateway.egress-gateway.id
  # }
# }

# resource "yandex_vpc_gateway" "egress-gateway" {
#   name = "egress-gateway"
#   shared_egress_gateway {}
# }

