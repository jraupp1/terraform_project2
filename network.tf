resource "aws" "new_vpc" {
  cidr_block = "10.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet1" {
    cidr_block = "${cidrsubnet(aws_vpc.new_vpc_environment.cidr_block, 1, 1)}"     # Seeded with the new VPC's CIDR block configuration
    vpc_id = "${aws_vpc.new_vpc_environment.id}"
    az = "${var.az["zone1"]}"
}

resource "aws_subnet" "subnet2" {
    cidr_block = "${cidrsubnet(aws_vpc.new_vpc_environment.cidr_block, 2, 1)}"     # Seeded with the new VPC's CIDR block configuration
    vpc_id = "${aws_vpc.new_vpc_environment.id}"
    az = "${var.az["zone2"]}"
}
