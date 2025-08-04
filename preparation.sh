#!/bin/bash

CFGDIR="$HOME/.config"
CURRENT_DIR=$(pwd)

echo "[INFO] Moving xprofile..."
if cp dotfile/xprofile "$HOME/.xprofile"; then
    echo "[SUCCESS] xprofile moved."
else
    echo "[ERROR] Failed to move xprofile."
fi

echo "[INFO] Setting up kitty config and fonts..."
mkdir -p "$CFGDIR/kitty"
cp dotfile/kitty.conf "$CFGDIR/kitty/"
if sudo cp -r fonts/* /usr/share/fonts/; then
    echo "[SUCCESS] Fonts installed."
else
    echo "[ERROR] Failed to install fonts."
fi

echo "[INFO] Setting up bspwm and sxhkd..."
cd "$CFGDIR" || { echo "[ERROR] $CFGDIR doesn't exist."; exit 1; }
mkdir -p bspwm sxhkd
cp "$CURRENT_DIR/dotfile/bspwmrc" bspwm/
chmod +x bspwm/bspwmrc
cp "$CURRENT_DIR/dotfile/sxhkdrc" sxhkd/
echo "[SUCCESS] bspwm and sxhkd config installed."

echo "[INFO] Setting up wallpaper..."
LANG=C xdg-user-dirs-gtk-update
ln -sf /usr/share/backgrounds/default.jxl "$HOME/Pictures/wall-img"
echo "[SUCCESS] Wallpaper link created."

echo "[INFO] Setting up picom config..."
mkdir -p picom
cp "$CURRENT_DIR/dotfile/picom.conf" picom/
echo "[SUCCESS] picom config installed."

echo "[INFO] Setting up polybar config..."
mkdir -p polybar
cp /usr/share/doc/polybar/examples/config.ini polybar/
cp "$CURRENT_DIR/dotfile/polybar_launch.sh" polybar/launch.sh
echo "[SUCCESS] polybar config installed."

echo "[INFO] Setting up dunst config..."
mkdir -p dunst
cp /etc/xdg/dunst/dunstrc dunst/
echo "[SUCCESS] dunst config copied."

echo "[INFO] Installing vimrc..."
cp "$CURRENT_DIR/dotfile/vimrc" "$HOME/.vimrc"
echo "[SUCCESS] vimrc installed."

# [OPTIONAL]
cp scripts/90-libinput-touchpad.conf /etc/X11/xorg.conf.d/

echo "[INFO] Switching from GDM to SDDM..."
sudo systemctl disable gdm && \
sudo systemctl stop gdm && \
sudo systemctl enable --now sddm && \
echo "[SUCCESS] GDM disabled, SDDM enabled." || \
echo "[ERROR] Failed to switch display manager."
