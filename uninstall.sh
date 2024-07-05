sudo apt remove --purge nodejs
sudo apt autoremove
sudo systemctl stop nginx
sudo apt remove --purge nginx
sudo apt autoremove
sudo systemctl stop mysql
sudo apt remove --purge mysql-server mysql-client
sudo apt autoremove