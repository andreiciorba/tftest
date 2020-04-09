provider "aws" {
  region     = "eu-west-3"
}

resource "aws_instance" "web" {
#   ami           = "ami-00424b7d7c82f03ab"
  ami = "${var.ami}"
  instance_type = "t2.micro"


  tags = {
    Name = "Terraform"
    Object = "Mars"
    Department = "SpaceX"
  }
}



variable "ami" {
  default = "ami-f81dab85"
}
