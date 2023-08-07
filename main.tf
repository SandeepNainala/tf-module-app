resource "aws_instance" "test" {
  ami  = "ami-03265a0778a880afb"
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}

variable "instance_type" {}
variable "subnet_id" {}