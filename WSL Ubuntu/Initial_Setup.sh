read -p "Install Gnome Apps (y/n): " install_gnome_apps
install_gnome_apps="$(echo $install_gnome_apps | tr '[A-Z]' '[a-z]')"

sudo apt update
sudo apt upgrade -y

sudo apt install -y git p7zip-full p7zip-rar apt-transport-https curl

if [[ "$install_gnome_apps" != n* ]]; then
    sudo apt install -y nautilus gnome-tweak-tool gedit
fi

# zsh
sudo apt install -y zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

sudo apt autoremove -y
sudo apt autoclean
sudo apt clean


# Pycharm
# ln -s $(find /opt/pycharm-community-*/bin -name pycharm.sh) /usr/bin/pycharm
# alias pycharm=$(find /opt/pycharm-community-*/bin -name pycharm.sh)

# Qt5 themig
# https://www.linuxuprising.com/2018/05/get-qt5-apps-to-use-native-gtk-style-in.html


# web installs: mega, brave, ms edge, miniconda, docker, vs code
