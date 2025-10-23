terraform {
  backend "s3" {
    bucket = "<버킷이름>"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"

  }
}
