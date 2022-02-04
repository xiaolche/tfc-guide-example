provider "aws" {
  region = var.region
}



resource "aws_instance" "ubuntu" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0a5ec3465edf6ff9a"]
  subnet_id              = "subnet-09197f1e450cc54fc"
  tags = {
    Name = var.instance_name
  }
}
