#!/bin/bash

# Define the base directory
BASE_DIR="ansible"

# Create the directory structure
mkdir -p ${BASE_DIR}/roles/mysql/tasks
mkdir -p ${BASE_DIR}/roles/mysql/files
mkdir -p ${BASE_DIR}/roles/nginx/tasks
mkdir -p ${BASE_DIR}/roles/nginx/templates
mkdir -p ${BASE_DIR}/roles/nodejs/tasks

# Create the files
touch ${BASE_DIR}/playbook.yml
touch ${BASE_DIR}/inventory
touch ${BASE_DIR}/roles/mysql/tasks/main.yml
touch ${BASE_DIR}/roles/mysql/files/my.cnf
touch ${BASE_DIR}/roles/nginx/tasks/main.yml
touch ${BASE_DIR}/roles/nginx/templates/nginx.conf.j2
touch ${BASE_DIR}/roles/nodejs/tasks/main.yml

# Provide feedback
echo "Directory structure and files created successfully."