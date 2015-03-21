routine

do buildTB.sh

qemu-img create -f raw image.raw 1G
losetup -o 32256 -f image.raw 
mkfs.ext4 /dev/loop0


mkdir sys
mount /dev/loop0 sys




do useTBasroot.sh as root

qemu-system-x86_64 -m 2048 -kernel /boot/vmlinuz-3.2.0-4-amd64 -initrd /boot/initrd.img-3.2.0-4-amd64 -append "root=/dev/sda1" image.raw


old:

do doinstallupdater.sh
do enterchrootdolistupdateable.pl.sh


