# terraform init
# terraform plan -out /tmp/p.out
# terraform apply -auto-approve
# aws configure
# aws ec2 delete-key-pair --key-name mykey
# ssh-keygen -f ~/.ssh/id_rsa -N ''

# cat terraform.tfstate|grep public_ip
# ssh -i ~/.ssh/id_rsa ubuntu@13.209.73.61

# terraform destroy -auto-approve

resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "example" {
  ami           = "ami-061b8c3dd6a50d8e3"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  root_block_device{
    volume_size   = 100
  }

  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
  }

  tags = {
    Name = "My Instance"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}
