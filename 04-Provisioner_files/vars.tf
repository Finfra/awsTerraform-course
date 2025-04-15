variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "ap-northeast-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.ssh/id_rsa"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/id_rsa.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "AMIS" {
  default = {
    eu-west-1      = "ami-05718e63cb39fcdb1"
    ap-northeast-2 = "ami-061b8c3dd6a50d8e3"
    us-east-1      = "ami-09eb231ad55c3963d"
  }
}
