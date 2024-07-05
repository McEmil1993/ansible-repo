#!/bin/bash


MYSQL_USERNAME="manager"
MYSQL_USER_PASSWORD="12345"
MYSQL_ROOT_PASSWORD="  "  


mysql -u root -p"${MYSQL_ROOT_PASSWORD}" <<MYSQL_SCRIPT
CREATE USER '${MYSQL_USERNAME}'@'%' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USERNAME}'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT


if [ $? -eq 0 ]; then
    echo "MySQL user '${MYSQL_USERNAME}' created successfully."
else
    echo "Failed to create MySQL user '${MYSQL_USERNAME}'."
fi