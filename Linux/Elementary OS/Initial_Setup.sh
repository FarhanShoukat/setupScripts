sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade

sudo apt install -y git p7zip-full p7zip-rar apt-transport-https curl vlc gparted snapd firefox synaptic software-properties-common
sudo apt install -y gnome-disk-utility nautilus gnome-system-monitor
sudo ubuntu-drivers install nvidia

# pantheon-tweaks
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks
sudo apt install -y pantheon-tweaks


# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install -y qbittorrent

# zsh
sudo apt install -y zsh
# chsh -s $(which zsh) 
RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# for vmware
# sudo apt-get install linux-headers-$(uname -r)

# dark theme for gnome/gtk apps
# https://github.com/elementary/stylesheet/issues/1014
