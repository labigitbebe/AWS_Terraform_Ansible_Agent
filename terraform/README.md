# Creating Infrastucture for  Production  on US-WEST-1 on AWS Region

# Creating Production EC2 instance for Master Server for Terraform and Ansible installation to manage client nodes 

# Creating Production EC2 instance for client nodes Agent installation

# install 
1- Terraform on master node
2- Install Ansible on master node
3- Required packages such as pip,unzip,vim

# Connect AWS
1- Create user and access key on AWS console
2- Create variables for access and secret key  ( real world need use Vault service to keep secure all keys,password and secrets)
3- Connect AWS using Terraform AWS prodiver
4- Create public/private key for ssh key

# Updates and copy files via ansible playbook via yml files
1-Update ubuntu server  using apt yml file
2-install requirement using yml
3-Create folder
4-Copy soure file
5-rename bash file
6- change permission tf-key file via chmod
7- Copy key file to Master node

# Run .sh file on Node
1-Copied file under /opt/csg_security_agent/
2-run bash sh script on agent node
