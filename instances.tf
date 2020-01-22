data "aws_ami" "ubuntu" {
    most_recent = true


    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
    }
    
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

        owners = ["099720109477"]
}

resource "aws_instance" "web_server1" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"

    tags {
        name = "Free Tier EC2 instance type"
    }

    subnet_id = "${aws_subnet.subnet2.id}"
}
