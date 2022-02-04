provider "aws" {
  region = var.region
}



resource "aws_instance" "ubuntu" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
