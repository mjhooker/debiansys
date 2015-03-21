routine

do buildTB.sh

qemu-img create -f raw image.raw 1G
losetup -o 32256 -f image.raw 
mkfs.ext4 /dev/loop0


mkdir sys
mount /dev/loop0 sys



do useTBasroot.sh as root
do doinstallupdater.sh

do enterchrootdolistupdateable.pl.sh


