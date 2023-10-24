#Install main GUI programs
sudo pkg install openbox xorg rofi lxappearance polybar alacritty thunar nitrogen  drm-kmod
sudo pkg install neofetch btop micro

mkdir "$HOME/Downloads"
mkdir "$HOME/Pictures"

mkdir -p "$HOME/.config/polybar"
mv "config.ini" "$HOME/.config/polybar"

mkdir -p "$HOME/.config/openbox"
mv "autostart" "$HOME/.config/openbox"
mv "rc.xml" "$HOME/.config/openbox"

mkdir -p "$HOME/.config/alacritty"
mv "alacritty.yml" "$HOME/.config/alacritty"

mv "Wallpaper.jpg" "$HOME/Pictures"

touch ~/.xinitrc
echo "exec openbox-session" >> ~/.xinitrc

sudo sysrc kld_list+=i915kms