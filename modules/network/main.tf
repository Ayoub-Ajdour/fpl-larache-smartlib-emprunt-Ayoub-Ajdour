resource "aws_vpc" "main_vpc" {
  cidr_block = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames  = true
}

resource "aws_subnet" "subnet" {
  count               = 3
  vpc_id              = aws_vpc.main_vpc.id
  cidr_block          = "172.31.${100 + count.index}.0/24"
  availability_zone   = "eu-north-1${element(["a", "b", "c"], count.index)}"
  map_public_ip_on_launch = true
}

