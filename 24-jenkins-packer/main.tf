resource "aws_key_pair" "key_name" {
  key_name   = "app-key"
  public_key = file("~/.ssh/id_rsa.pub")
} 