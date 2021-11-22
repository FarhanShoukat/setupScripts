sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade

sudo apt install -y git p7zip-full p7zip-rar apt-transport-https curl vlc gparted snapd firefox synaptic zsh software-properties-common
sudo apt install -y gnome-disk-utility nautilus gnome-system-monitor gedit
sudo ubuntu-drivers install nvidia

# pantheon-tweaks
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks
sudo apt install -y pantheon-tweaks


# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install -y qbittorrent

sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# for vmware
# sudo apt-get install linux-headers-$(uname -r)

# dark theme for gnome/gtk apps
# https://github.com/elementary/stylesheet/issues/1014

# indicator/tray icons for apps like mega
# https://github.com/Lafydev/wingpanel-indicator-ayatana
