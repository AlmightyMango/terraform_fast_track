provider "aws" {
    region = "us-east-1"
}

variable "vpcName"{
    type    = string
    default = "myVPC"
}
variable "sshPort"{
    type    = number
    default = 22
}

variable "enabled" {
    default = true
}

variable "mylist"{
    type = list(string)
    default ["Value1", "Value2"]
}

variable "myMap" {
    type = map 
    default = {
        key1 = "Value1"
        key2 = "Value2"
    }
}

resource "aws_vpc" "my_vpc"{
    cidr_block = "10.0.0.0/16"
    name = var.mylist[0]
}
