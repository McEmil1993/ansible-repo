
yes | sudo apt remove --purge nodejs
yes | sudo apt autoremove
sudo systemctl stop nginx
yes | sudo apt remove --purge nginx
yes | sudo apt autoremove
sudo systemctl stop mysql
yes | sudo apt remove --purge mysql-server mysql-client mysql-common
yes | sudo apt autoremove

yes | sudo apt clean
yes | sudo apt update