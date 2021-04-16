# How to use the Playbooks

# Requirements

- ansible 2.10.4
- linux system

# Step 1: Create Inventory

Create your [inventory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html).

# Step 2: Run Playbooks

- Install docker and docker-compose on a ubuntu server with: `ansible-playbook setup_server.yml -i INVENTORY_FILE`
- TODO: how to configure setup_containers
- Runt Container on Server with: `ansible-playbook setup_containers.yml -i INVENTORY_FILE`
