# Install GNOME-X11
sudo dnf install -y gnome-session-xsession

# Install essential packages for bspwm and basic utilities
sudo dnf install -y kitty rofi picom feh polybar sddm vim paplay dunst 
sudo dnf install -y bspwm sxhkd


# auxiliary tools
sudo dnf install -y xclip copyq scrot xdotool 

# Additional tools
sudo dnf install -y nvim zathura sxiv mpv

dnf copr enable pennbauman/ports
dnf install lf


