provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-061b8c3dd6a50d8e3"
  instance_type = "t2.micro"
}
