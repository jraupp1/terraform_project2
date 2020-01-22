variable "vpc_name" {
    description = "VPC network 1"
}

variable "s3_terraform_bucket" {

}

variable "environment" {}
variable "region" {}

variable "az" {
    type = "map"
    default = {
        zone1 = "us-east-1a"
        zone2 = "us-east-1b"
        zone3 = "us-east-1c"
    }
}

variable "cidrblock" {
    default = "10.0.0.0/16"
}