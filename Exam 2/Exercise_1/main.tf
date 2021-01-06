# TODO Declare provider, credentials and region

provider "aws" {
  region     = var.region
  access_key = "XXXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Instance-T2" {
  count = "4"
  ami = "ami-5b41123e"
  instance_type = "t2.micro"

  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Instance-M4" {
  count = "2"
  ami = "ami-ac5d77d7"
  instance_type = "m4.large"

  tags = {
    Name = "Udacity M4"
  }
}