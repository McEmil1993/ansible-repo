#!/bin/bash

# Define MySQL credentials and user details
MYSQL_USERNAME="manager"
MYSQL_USER_PASSWORD="12345"
MYSQL_ROOT_PASSWORD="  "  # Replace with your actual MySQL root password

# MySQL commands to create user and grant privileges
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" <<MYSQL_SCRIPT
CREATE USER '${MYSQL_USERNAME}'@'%' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USERNAME}'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

# Optionally, you can output success/failure messages or handle errors
if [ $? -eq 0 ]; then
    echo "MySQL user '${MYSQL_USERNAME}' created successfully."
else
    echo "Failed to create MySQL user '${MYSQL_USERNAME}'."
fi