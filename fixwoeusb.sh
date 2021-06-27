#error looks like this
#woeusb : Depends: libwxgtk3.0-0v5 (>= 3.0.4+dfsg) but it is not installable

sudo apt update
sudo apt install woeusb
wget http://mirrors.kernel.org/ubuntu/pool/universe/w/wxwidgets3.0/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb
#replace filename with downloaded file
sudo dpkg -i filename.deb
sudo apt update
sudo apt install woeusb
#select NTFS for flashing windows iso
