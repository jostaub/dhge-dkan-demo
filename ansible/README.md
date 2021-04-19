# How to use the Playbooks

# Requirements

- ansible 2.10.4
- linux system
- ubuntu server
- basic ansible knowledge

# Step 1: Create Inventory

Create your [inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html).

# Step 2: Run Playbooks

- Install docker and docker-compose on a ubuntu server with: `ansible-playbook setup_server.yml -i INVENTORY_FILE`
- Configure `setup_containers` vars to your liking
- Start containers on server with: `ansible-playbook setup_containers.yml -i INVENTORY_FILE`

# Variables: setup_containers

| Tables                         |                  Function/ Meaning                   |    Type |
| ------------------------------ | :--------------------------------------------------: | ------: |
| dkan_is_dev                    | if enabled disable http and enable traefik dashboard | Boolean |
| dkan_container_config_path     |         path to save container configuration         |  String |
| dkan_network_name              |     docker Network named used by the containers      |  String |
| frontend_git_repo              |            frontend repo to use with DKAN            |  String |
| lets_encrypt_certificate_email |          email for lets encrypt certificate          |  String |
| mysql_config                   |               config Object for mysql                |  String |
