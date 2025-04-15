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
  type = map(string)
  default = {
    ap-northeast-2 = "ami-0c9c942bd7bf113a2"  # Ubuntu 20.04 LTS
  }
}

variable "APP_INSTANCE_AMI" {
  default = "ami-0c9c942bd7bf113a2"  # Ubuntu 20.04 LTS
}

variable "APP_INSTANCE_COUNT" {
  default = 1
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
variable "JENKINS_VERSION" {
  default = "2.121.2"
}
variable "TERRAFORM_VERSION" {
  default = "0.11.7"
}
