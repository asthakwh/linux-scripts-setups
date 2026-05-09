# Ansible Playbook and Running it on a Remote Server to Install or Update Packages
sudo apt update -y
sudo apt install ansible -y

pip install ansible
SSh user@remote_server_ip #verify connectivity
# copy package.yaml from repo or create
#if in aws copy or generate ssh key 
touch install.yml
sudo nano inventory
#[webservers] # from yml file hosts
#server1 ansible_host=<remote_server_ip>
#server2 ansible_host=<remote_server_ip>
[webservers]
server1 ansible_host=13.201.77.25 ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/final-key.pem
server2 ansible_host=65.0.109.51 ansible_user=ubuntu ansible_ssh_private_key_file=/home/ubuntu/final-key.pem
#run playbook
ansible-playbook -i inventory install.yml

#check on servers