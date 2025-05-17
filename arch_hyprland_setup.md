//Archinstall comamnds that I use on Lenovo Legion 7 pro 16IRX8H

rfkill unblock all
iwctl
station wlan0 connect "5G The Bryn"
archinstall
//select hyprland with nvidia proprietary

systemctl enable NetworkManager
nmcli device wifi list
nmcli device wifi connect "5G The Bryn"//replace with the wifi name

sudo pacman -S playerctl waybar git firefox brightnessctl wl-clipboard
