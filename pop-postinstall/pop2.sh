sudo apt update
sudo apt install menulibre papirus-icon-theme gnome-tweaks neofetch #asthetic
sudo apt install flameshot nautilus-admin transmission gparted #functional
sudo apt install virtualbox wine wine32 python3-pip synaptic net-tools htop gdebi meson git default-jre #useful
#sudo apt install grub-customizer kazam vlc virtualbox-guest-additions-iso timeshift
sudo apt update && sudo apt upgrade #sometimes apps dont come with latest versions from debs
sudo kernelstub --delete-options "quiet systemd.show_status=false splash" #no plymouth = faster boot i think
echo downlaod and install these
firefox https://www.google.com/intl/en_in/chrome/ https://www.onlyoffice.com/en/download-desktop.aspx https://www.sublimetext.com/docs/linux_repositories.html https://code.visualstudio.com/download https://protonvpn.com/support/linux-ubuntu-vpn-setup/ https://zoom.us/download
git clone https://github.com/snwh/paper-icon-theme.git && cd paper-icon-theme
meson "build" --prefix=/usr && sudo ninja -C "build" install
echo paper icon theme build finished
cd ~/Pictures/

echo "gnome tweaks settings to change :

animations - off
suspend - off
overamplification - on
applications - pop dark
cursor - paper
icons - papirus
shell - pop dark
sound - pop
hot corner - on
battery percent - on
weekday - on
date - on
seconds - off
week numbers - off
change to only 1 workspace
search only files, calculator, terminal
touchpad natural scrolling
keyboard switch windows alt tab
add flameshot shortcut"
