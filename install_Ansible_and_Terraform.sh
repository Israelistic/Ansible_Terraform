 #!/usr/bin/env bash
#Auther: Hagi Lerman
#Date: Apr 28 2019
#OS: Ubuntu  18.04 Bionic Veaver LTS
#NOTE! USE WITH YOUR OWN CATUION! This script will install Ansible and Terraform for Ubuntu.

# if [ $PWD !="root"]
# then
#     echo "You must be located in /root"
# fi

# Update repository cache
sudo apt-get -y update
# Install python pip
sudo apt install python-pip -y
# Upgrade pip -just in case
pip install --upgrade pip
# Install Terraform
curl -0 https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
# create a folder name terraform in bin directory
sudo mkdir /bin/terraform
#unzip terraform zip
sudo unzip terraform_0.11.2_linux_amd64.zip -d /bin/terraform/
# Add Terraform to our path without destorying our current PATH
sudo echo 'export PATH=:/bin/terraform:$PATH' >> ~/.bashrc
source ~/.bashrc
# check Terraform version
terraform --version
# Installing AWS cli
pip install awscli --upgrade
#check AWS cLI version
aws --version
#check for updates again
sudo apt-get -y update
sudo apt-get install software-properties-common
# add Ansible repo
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update

# Install Ansible
sudo apt-get install ansible -y
# Check Ansible version
ansible --version
# Create keys to access our server
ssh-keygen
.ssh/kryptonite
password shhhhhhhh # just kidding with you I wont tell you my key  password Dah:)

#Access to ssh agent to allow the forwarding of the key
ssh-agent bash
ssh-add ~/.ssh/kryptonite

#Check if the key added
ssh-add -l
# modifly Ansible config file
vim /etc/ansible/ansible.cfg
#Search for 'host' inside vim
/host
# disable host_key-checking
host_key_checking = False
# create working directory for terrafor and ansible
mkdir terransible
# change into directory
cd terransible
