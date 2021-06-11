# pop-qol-tweaks
### Quality of life scripts and references for PopOS
#### Scripts
- `fixwoeusb.sh` Fixes WOEusb installation, used to make a windows bootable USB with woeusb (etcher, popsicle and unetbootin can't do it)
- Dual boot partitions :
  - 500mb-efi
  - 4096mb-swap
  - 4096mb-recovery
  - Remaining- BTRFS/ZFS/EXT4
- Dual boot steps (any linux distro) :
  - Install & update windows
  - Shrink (C:) partition using `diskmgmt.msc`
  - Install linux distro
  - Make partitions
- Dual boot steps (only pop os) : 
  - Pop OS can share windows EFI for efficent boot managment (NO NEED FOR REFIND)
  - Follow the [offical guide](https://support.system76.com/articles/dual-booting/)
- How to disable plymouth
  - `sudo kernelstub --delete-options "quiet systemd.show_status=false splash"`
- Wayland
  - `sudo nano /etc/gdm3/custom.conf`
  - add # before `WaylandEnable=false`
  - `sudo systemctl restart gdm3`
- Disable pop shop
  - `sudo nano /usr/share/applications/io.elementary.appcenter-daemon.desktop`
  - add # before `Exec=io.elemantry.appcenter -s`
