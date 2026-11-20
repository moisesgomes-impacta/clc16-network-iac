output "id_vpc" {
  value = aws_vpc.clc_vpc.id
}

output "public_subnet_1a" {
  value = aws_subnet.public_subnet_1a.id
}

output "private_subnet_1a" {
  value = aws_subnet.private_subnet_1a.id
}

output "public_rt" {
  value = aws_route_table.public_rt.id
}

output "igw_clc_vpc" {
  value = aws_internet_gateway.gw_clc_vpc.id
}

output "public_subnet_1c" {
  value = aws_subnet.public_subnet_1c.id
}

output "private_subnet_1c" {
  value = aws_subnet.private_subnet_1c.id
}

output "rt_pub_association_subnet_1c_id" {
  value = aws_route_table_association.rt_pub_association_subnet_1c.id
}

output "eip_nat_gw_1c_id" {
  value = aws_eip.eip_nat_gw_1c.id
}

output "eip_nat_gw_1c_public_ip" {
  value = aws_eip.eip_nat_gw_1c.public_ip
}

output "private_rt_1c_id" {
  value = aws_route_table.private_rt_1c.id
}

output "rt_priv_association_subnet_1c_id" {
  value = aws_route_table_association.rt_priv_association_subnet_1c.id
}

# output "ec2_id" {
#   value = aws_instance.web_server.id
# }

# output "ec2_public_ip" {
#   value = aws_instance.web_server.public_ip
# }