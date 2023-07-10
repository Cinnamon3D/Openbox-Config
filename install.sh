sudo apt update -y
sudo apt upgrade -y

#Install main GUI programs
sudo apt install -y openbox xorg rofi lxappearance polybar alacritty thunar nitrogen nala i3lock-fancy flatpak
#Installl background tools
sudo apt install -y brightnessctl zip xinput policykit-1 build-essential network-manager network-manager-gnome curl bluez blueman
#Install extras
sudo apt install -y neofetch btop
#install themes
sudo apt install -y breeze-cursor-theme breeze-gtk-theme gnome-themes-extra 

sudo systemctl enable NetworkManager

sudo apt remove -y xterm vim*

mkdir "$HOME/Downloads"
mkdir "$HOME/Pictures"
mkdir "$HOME/Freecad"
mkdir "$HOME/Blender"
mkdir "$HOME/Other Docs"

mkdir "$HOME/.config/polybar"
mv "config.ini" "$HOME/.config/polybar"

mkdir -p "$HOME/.config/openbox"
mv "autostart" "$HOME/.config/openbox"
mv "rc.xml" "$HOME/.config/openbox"

mkdir -p "$HOME/.config/alacritty"
mv "alacritty.yml" "$HOME/.config/alacritty"

mkdir -p "$HOME/.config/neofetch"
mv "config.conf" "$HOME/.config/neofetch"

sudo mv "sources.list" "/etc/apt"

mv "Wallpaper.jpg" "$HOME/Pictures"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

cd

curl -LO "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install -y ./google-chrome-stable_current_amd64.deb

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

echo "run rofi-theme-selector, obconf, lxappearance, and nitrogen"
