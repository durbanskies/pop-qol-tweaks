sudo apt-get remove libreoffice* #onlyoffice instead
sudo apt remove simple-scan geary com.github.donadigo.eddy gnome-weather #pointless apps
sudo apt remove gnome-calendar gnome-contacts #gnome apps, needed for online acocunt syncing
sudo apt update && sudo apt autoremove
sudo apt update && sudo apt upgrade -y && flatpak update
echo reboot and run pop2.sh