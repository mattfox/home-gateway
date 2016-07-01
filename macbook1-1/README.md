Hopefully I never need to worry about this again. Installing Debian on a first-gen 32-bit Core 2 Macbook is not something to be undertaken lightly.

For installing on MacBook1,1, refer to:
* http://www.makeuseof.com/tag/how-to-boot-a-linux-live-usb-stick-on-your-mac/
* http://astrofloyd.wordpress.com/2014/01/14/boot-linux-from-usb-flash-drive-on-macbook/
* http://www.mediafire.com/download/dpgorsfdkf6nn2c/ISO-2-USB+EFI-Booter+for+Mac+0.01+beta+-+Ubuntu+10.10+Live.zip
* http://forums.debian.net/viewtopic.php?f=17&t=75604
* http://ftp.debian.org/debian/dists/wheezy/main/installer-i386/current/images/hd-media/
* http://tanguy.ortolo.eu/blog/article51/debian-efi
* http://www.rodsbooks.com/refind/linux.html

And these were important enough to document when I did this the first time:

```
# Install and configure grub-efi on MacBook1,1 (32-bit Core Duo).
apt-get install grub-efi
grub-install /dev/sda
update-grub
mount -t vfat /dev/sda1 /mnt
# MacBook1,1 doesn't seem to understand anything except /EFI/boot/boot.efi
cp /boot/grub/boot.efi /mnt/EFI/boot/boot.efi
apt-get remove elilo --purge
```
