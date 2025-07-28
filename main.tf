provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "one"{
count = 5
ami = "ami-020cba7c55df1f615"
instance_type = "t2.medium"
key_name = "anjali"
vpc_security_group_ids = ["sg-06d50c132f8c8c476"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}
