data "aws_ami" "app_ami" {
  most_recent = true
  
  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }
  
provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "my_vpc"{
    cidr_block = "10.0.0.0/16"
}
