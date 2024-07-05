
yes | sudo apt remove --purge nodejs
yes | sudo apt autoremove
sudo systemctl stop nginx
yes | sudo apt remove --purge nginx
yes | sudo apt autoremove
sudo systemctl stop mysql
yes | sudo apt remove --purge mysql-server mysql-client
yes | sudo apt autoremove