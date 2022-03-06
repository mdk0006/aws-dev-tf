output "aws_ami" {
  value = data.aws_ami.server_ami.name
}
output "sg_name" {
  value = aws_security_group.dev-sg.name
}
output "vpc_name" {
  value = aws_vpc.dev_vpc.tags.Name
}
output "subnet_name" {
  value = aws_subnet.dev_pub_subnet.tags.Name
}
output "key_name" {
  value = aws_key_pair.my_key.key_name
}
output "az" {
  value = aws_subnet.dev_pub_subnet.availability_zone
}
output "machine_ip" {
  value = aws_instance.dev_node.public_ip
}