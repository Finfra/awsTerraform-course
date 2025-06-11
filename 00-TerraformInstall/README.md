코드에서 발견된 문제점들을 수정했음:

# Terraform Install (v1.11.4) - 수정 버전

## Ubuntu install
```bash
# System Variable Setting
export DEBIAN_FRONTEND=noninteractive
echo "export DEBIAN_FRONTEND=noninteractive" >> /etc/bash.bashrc

# Essential Tools Installation (root 권한 필요)
sudo -i << 'EOF'
apt-get update && apt-get install -y gnupg software-properties-common curl

# Terraform Install
curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
apt-get update && apt-get install -y terraform

# AWS CLI Install
apt install -y python3-full python3-pip
[[ -f /usr/bin/python ]] && rm /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python
python3 -m pip install --break-system-packages awscli
EOF

# 설치 확인
terraform -version
aws --version

# Optional: Auto-completion 설정
# terraform -install-autocomplete
# echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
# source ~/.bashrc
```

## AWS/Oracle install  
```bash
# Essential Tools Installation
sudo dnf install -y curl unzip gnupg yum-utils

# Terraform Install
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo sed -i 's|\$releasever|9|' /etc/yum.repos.d/hashicorp.repo
sudo yum -y install terraform

# AWS CLI Install
sudo dnf install -y python3-pip
sudo bash -c '[[ -f /usr/bin/python ]] && rm /usr/bin/python'
sudo ln -s /usr/bin/python3 /usr/bin/python
python3 -m pip install --user awscli

# 설치 확인
terraform -version
aws --version

# Optional: Auto-completion 설정
# terraform -install-autocomplete
# echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
# source ~/.bashrc
```

## Mac install
```bash
# Terraform Install 
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# AWS CLI Install
curl https://awscli.amazonaws.com/AWSCLIV2.pkg -o /tmp/AWSCLIV2.pkg
sudo installer -pkg /tmp/AWSCLIV2.pkg -target /
rm /tmp/AWSCLIV2.pkg

# 설치 확인
terraform -version
aws --version

# Optional: Auto-completion 설정
# echo "complete -C /opt/homebrew/bin/terraform terraform" >> ~/.zshrc
# echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.zshrc
# source ~/.zshrc
```
