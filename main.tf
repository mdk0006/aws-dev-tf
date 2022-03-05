resource "aws_vpc" "dev_vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true #to ensure your team knows
  tags = {
    Name = "dev"
  }
}
resource "aws_subnet" "dev_pub_subnet" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2a"
  tags = {
    Name = "dev-pub-subnet"
  }
}
resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = "dev-igw"
  }
}
resource "aws_route_table" "dev_pub_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  tags = {
    Name = "dev-rt"

  }
}
resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.dev_pub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev_igw.id
}
resource "aws_route_table_association" "pub_rt_asso" {
  subnet_id      = aws_subnet.dev_pub_subnet.id
  route_table_id = aws_route_table.dev_pub_rt.id
}
resource "aws_security_group" "dev-sg" {
 name = "dev-sg"
 description= "dev security group"
 vpc_id = aws_vpc.dev_vpc.id

 ingress {
   from_port= 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"] # We can enter multiple ips here
   description = "for-testing"
 }
 egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_key_pair" "my_key" {
  key_name = "my-key"
  public_key = file("~/.ssh/dev_key.pub")
}