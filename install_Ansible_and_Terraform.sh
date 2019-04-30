 #!/usr/bin/env bash
#Auther: Hagi Lerman
#Date: Apr 28 2019
#OS: Ubuntu  18.04 Bionic Beaver LTS
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
.ssh/yourkeynamehere # secret :0 >> ;)
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

# Setup AWS account
#The following step are done MANUALLY! step-up by AWS console GUI
#Step1: Navigate to IAM  > USERS
#Step2: Click Add User >  give it a name > Under Access type select Programmatic access > click Next
#step3: Set Permission for the user > click Attach existing policies directly
#step4: Select AdministratorAccess > Next > review > create user
#step5: DOWNLOAD credentials  !!


# Configuring a new profile for AWS
aws configure --profile superhero
#enter your Access key ID
#enter your Secret access key
#set region name: us-east-1 (you can set it to you liking)
# check if we connected
aws ec2 describe-instances --profile superhero
# setting  up AWS ROUTE53 (DNS) to set domains and keep the same name  to create hosted zone
aws route53 create-reusable-delegation-set --caller-reference 1224 --profile superhero
# copy your DNS setting for ease of USE

# create these files in terransible
touch main.tr terraform.tfvars variables.tf
touch userdata aws_hosts wordpress.yml s3update.yml
