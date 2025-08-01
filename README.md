# Purpose
This dotfile is ised to config bspwm and its configure on a brandnew fedora42-workstation-GNOME

We're going to use x11 instead of wayland for greater support for hardware

We will change GDM to sddm since former doesn't support x11 very well...

Use
kitty
rofi
picom
dunst
feh
scrot
vim

x11

# Usage Guide
first run `install_requirements.sh`

then run `preparation.sh`

finally choose bspwm in sddm and hyper+return to get fisrt kitty.


# VIM
little tweaks

# BSPWM
- add PATHS for editing bspwm & sxhkd config
- add Wallpaper and its PATH
- add polybar
- add dunst for notification

# SXHKD
- add Super+E to open file-explorer
- add Super+v/V to hide/unhide windows
- add Print to take screenshot, copy and save it to Pictures

# Other changes
- set `Caps Lock` to `Hyper`
- set `ibus` by `.xprofile`
- add customized picom conf

# Next
- try lf: https://github.com/gokcehan/lf
- add mpv
- tweak xrandr option
    - `xrandr --output DP-0 --mode aaaaxbbb`
- add battery and wifi module
- add neovim in
- should see this https://gist.github.com/amit08255/43ed6efdc1952d88f9a61e86f375e924
- add my recording2text scripts
- watch this: https://github.com/LukeSmithxyz/voidrice/tree/master?tab=readme-ov-file
- also check this: https://lukesmith.xyz/programs/
- maybe ... NEWSBOAT of RSS feed?
- zathura for pdf
- sxiv for image