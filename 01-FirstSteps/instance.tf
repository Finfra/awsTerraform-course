provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-042e76978adeb8c48"
  instance_type = "t2.micro"
}
