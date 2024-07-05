#!/bin/bash

# MySQL root credentials
MYSQL_USER="root"
MYSQL_PASSWORD="  "

# MySQL user details
MYSQL_USERNAME="manager"
MYSQL_USER_PASSWORD="12345"

# MySQL query to create user with privileges
QUERY="GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USERNAME'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"

# Execute MySQL query using mysql client
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$QUERY"

# Check if the query executed successfully
if [ $? -eq 0 ]; then
    echo "MySQL user '$MYSQL_USERNAME' created successfully."
else
    echo "Failed to create MySQL user '$MYSQL_USERNAME'."
fi