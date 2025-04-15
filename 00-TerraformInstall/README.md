# Terraform Install
* Version: v1.11.4

## Ubuntu install
```
# System Variable Setting
export DEBIAN_FRONTEND=noninteractive
echo "export DEBIAN_FRONTEND=noninteractive">>/etc/bash.bashrc

# Essential Tools Installation
sudo -i
apt-get update && apt-get install -y gnupg software-properties-common curl

# Terraform Install
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update && sudo apt-get install -y terraform
terraform -version
#terraform -install-autocomplete

# AWS CLI Install
apt install -y python3-full
apt install -y python3-pip
[[ -f /usr/bin/python ]]&& sudo rm /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python
python3 -m pip install --break-system-packages awscli
aws --version
#echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
#source ~/.bashrc

```

## Aws/Oracle install
```
# Essential Tools Installation
sudo -idnf install -y curl unzip gnupg
dnf install -y yum-utils

# Terraform Install
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sed -i 's|\$releasever|9|' /etc/yum.repos.d/hashicorp.repo
yum -y install terraform
terraform -version
#terraform -install-autocomplete

# AWS CLI Install
dnf install -y python3-pip
[[ -f /usr/bin/python ]]&& sudo rm /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python
python3 -m pip install awscli
aws --version
#echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
#source ~/.bashrc

```

## Mac install
```
# Terraform Install 
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

#echo "complete -C /opt/homebrew/bin/terraform terraform" >> ~/.bash_profile

# Aws Cli install
curl https://awscli.amazonaws.com/AWSCLIV2.pkg -o /tmp/AWSCLIV2.pkg
sudo installer -pkg /tmp/AWSCLIV2.pkg -target /
aws --version

#echo "complete -C '/usr/local/bin/aws_completer' aws" >> ~/.bashrc
#source ~/.bashrc
```
