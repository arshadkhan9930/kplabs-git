provider "aws" {
  region     = "us-west-2"
}

variable "istest" {
}
resource "aws_instance" "dev" {
  ami           = "ami-0fc682b2a42e57ca2"
  instance_type = "t2.micro"
  count =  var.istest == true ? 3 : 0
}

  resource "aws_instance" "prod" {
  ami           = "ami-0fc682b2a42e57ca2"
  instance_type = "t3.micro"
  count =  var.istest == false ? 1 : 0
  }