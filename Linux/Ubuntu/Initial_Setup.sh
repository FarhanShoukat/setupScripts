sudo apt update
sudo apt upgrade -y

sudo apt install -y git p7zip-full p7zip-rar apt-transport-https curl vlc gparted snapd synaptic
sudo apt install -y gnome-tweaks
sudo ubuntu-drivers install nvidia

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install -y qbittorrent

# sudo apt install -y ubuntu-restricted-extras

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


# Default locations change in ubuntu
# nano $HOME/.config/user-dirs.dirs
# https://askubuntu.com/questions/60161/change-the-default-downloads-directory


# touch ~/Templates/Empty\ Document
# timedatectl set-local-rtc 1 --adjust-system-clock


# Gnome extensions: netspeed, cpu power manager, hide activities button, status area horizontal spacing


# hibernate
# sudo apt install -y uswsusp pm-utils gnome-screensaver
# sudo visudo
# Add `farhan ALL=(ALL) NOPASSWD: /usr/sbin/pm-hibernate` to visudo
# Shortcut `bash -c "gnome-screensaver-command -l; sudo pm-hibernate;"`


# # nvidia driver installation
# sudo add-apt-repository ppa:graphics-drivers/ppa && ubuntu-drivers list
# sudo apt install nvidia-driver-
# set prime-select to intel after restart


# adding swap memory
# https://help.ubuntu.com/community/SwapFaq

# grub settings
# https://askubuntu.com/questions/43020/decrease-grub-timeout

# Qt5 themig
# https://www.linuxuprising.com/2018/05/get-qt5-apps-to-use-native-gtk-style-in.html


# shortcuts
# systemctl poweroff
# systemctl reboot
# bash -c "if [[ $(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled) == "true" ]]; then gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false; else gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true; fi"


# https://itsfoss.com/install-vmware-player-ubuntu-1310/
# web installs: mega, brave, ms edge, miniconda, docker, vs code
