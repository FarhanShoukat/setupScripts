read -p "Install Gnome Apps (y/n): " install_gnome_apps
install_gnome_apps="$(echo $install_gnome_apps | tr '[A-Z]' '[a-z]')"

sudo apt update
sudo apt upgrade -y

sudo apt install -y git p7zip-full p7zip-rar apt-transport-https curl zsh

if [[ "$install_gnome_apps" != n* ]]; then
    sudo apt install -y nautilus gnome-tweak-tool gedit
fi

sudo apt autoremove -y
sudo apt autoclean
sudo apt clean


# Pycharm
# ln -s $(find /opt/pycharm-community-*/bin -name pycharm.sh) /usr/bin/pycharm
# alias pycharm=$(find /opt/pycharm-community-*/bin -name pycharm.sh)
