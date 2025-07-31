CFGDIR="$HOME/.config"

# 1. prepare kitty, since default font in kitty is awful
mkdir -p $CFGDIR/kitty
cp dotfile/kitty.conf $CFGDIR/kitty/

# 2. setup bspwm and sxhkd
cd $CFGDIR || echo "$CFGDIR doesn't exist." && exit
mkdir bspwm sxhkd
cp dotfile/bspwmrc bspwm/
cp dotfile/sxhkdrc sxhkd/

# 3. setup wallpaper
ln -s /usr/share/backgrounds/default.jxl ~/Pictures/wall-img

# 4. compositor
mkdir picom
cp /usr/share/doc/picom/picom.conf.example picom/picom.conf

# 5. polybar
mkdir polybar
cp /usr/share/doc/polybar/examples/config.ini polybar/
cp dotfile/polybar_launch.sh polybar/launch.sh

# 6. dunst
mkdir dunst
cp /etc/dunst/dunstrc dunst/

# Disable GDM and enable sddm to embrace new bspwm!
sudo systemctl disable gdm
sudo systemctl enable --now sddm