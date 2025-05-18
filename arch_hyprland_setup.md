//Archinstall comamnds that I use on Lenovo Legion 7 pro 16IRX8H

rfkill unblock all
iwctl
station wlan0 connect "5G The Bryn"
archinstall
//select hyprland with nvidia proprietary

systemctl enable NetworkManager
nmcli device wifi list
nmcli device wifi connect "5G The Bryn"//replace with the wifi name

sudo pacman -S playerctl waybar git firefox brightnessctl wl-clipboard pipewire-pulsewire wireplumber adobe-source-han-sans-cn-fonts bluetui bluez bluez-libs bluez-utils brightnessctl dotnet-sdk dotnet-runtime lib32-nvidia-utils nodejs npm nvidia-settings adobe-source-han-serif-cn-fonts adobe-source-han-sans-cn-fonts fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-qt
