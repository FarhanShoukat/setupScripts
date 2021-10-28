sudo apt update
sudo apt install -y snapd

sudo snap install snap-store

sudo snap install pycharm-community --classic
sudo snap install postman

sudo snap install docker
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
# sudo snap disable docker
# sudo snap enable docker

