sudo pacman -S adobe-source-han-serif-cn-fonts
sudo pacman -S adobe-source-han-sans-cn-fonts

#in sudo vim /etc/environment:
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
