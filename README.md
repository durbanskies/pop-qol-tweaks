# pop-qol-tweaks
### Quality of life scripts and references for PopOS

#### Some scripts :
- `fixwoeusb.sh`
  - **Do not** run this as a script, refer to the commands !
  - Set of commands to fixes WOEusb installation, used to make a windows bootable USB with woeusb (etcher, popsicle and unetbootin can't do it)
- `pop1.sh and pop2.sh`
  - In the `pop-postinstall/` directory
  - Use `sudo chmod +x pop1.sh` & `sudo chmod +x pop2.sh` for run privileges
  - Run `pop1.sh` for updates and removing extra packages, reboot !
  - Run `pop2.sh` to autoinstall software

#### Dual boot :
- Pop default partition reference :
  - 500mb-efi
    - Windows bootloader installed to the **same 500mb** partition if Pop is installed first and shrunk
    - Other distros can use a **pre-made 100mb efi** partition if windows is installed first
    - Solus requires more than 100mb so creating an ESP parition of **500mb seperate** from windows 100mb, use f7 to choose boot device on startup
  - 4gb-swap
    - not necessary but by default a swap partition is created, if no partition is specified it uses a dyanmic swapfile
  - 4gb-recovery live environment
  - Remaining- root(home)
- Dual boot steps (any linux distro) :
  - Install & update windows
    - [Disable fast startup](https://www.asus.com/support/FAQ/1045548/)
  - Shrink (C:) partition using `diskmgmt.msc`
  - Install linux distro with ext4, home and swap parition not needed
  - Do `sudo update-grub`
  - Maybe get [refind](https://en.wikipedia.org/wiki/REFInd)
    - `sudo apt install refind`
    - then just leave it alone, maybe [theme](https://github.com/bobafetthotmail/refind-theme-regular) it
- Dual boot steps (only pop os) : 
  - Pop OS can share windows EFI for efficent boot managment (NO NEED FOR REFIND)
  - Follow the [offical guide](https://support.system76.com/articles/dual-booting/)
  - Upon startup press **[SPACE]** or **[f7]**

#### Tweak commands :
- How to disable plymouth
  - `sudo kernelstub --delete-options "quiet systemd.show_status=false splash"`
- Wayland
  - `sudo nano /etc/gdm3/custom.conf`
  - add # before `WaylandEnable=false`
  - `sudo systemctl restart gdm3`
- Modify power button actions
  - `sudo nano /etc/systemd/logind.conf`
  -  Edit these lines :
    - 
- Disable pop shop
  - `sudo nano /usr/share/applications/io.elementary.appcenter-daemon.desktop`
  - add # before `Exec=io.elemantry.appcenter -s`
- Mask sleep functions
  - `sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target`
