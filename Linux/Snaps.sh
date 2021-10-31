#!/bin/bash

read -p "Snap Store (y/n): " snap_store
read -p "PyCharm (y/n): " PYCHARM
read -p "Postman (y/n): " POSTMAN
read -p "Docker (y/n): " DOCKER

snap_store="$(echo $snap_store | tr '[A-Z]' '[a-z]')"
if [[ "$snap_store" != n* ]]; then
    sudo snap install snap-store
fi

PYCHARM="$(echo $PYCHARM | tr '[A-Z]' '[a-z]')"
if [[ "$PYCHARM" != n* ]]; then
    sudo snap install pycharm-community --classic
fi

POSTMAN="$(echo $POSTMAN | tr '[A-Z]' '[a-z]')"
if [[ "$POSTMAN" != n* ]]; then
    sudo snap install postman
fi

DOCKER="$(echo $DOCKER | tr '[A-Z]' '[a-z]')"
if [[ "$DOCKER" != n* ]]; then
    sudo snap install docker
    sudo addgroup --system docker
    sudo adduser $USER docker
    newgrp docker
    sudo snap disable docker
    sudo snap enable docker
fi
