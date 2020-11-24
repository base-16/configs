#!/bin/bash

cvt 1440 900
xrandr --newmode "new" 106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
xrandr -q
xrandr --addmode VGA-1 "new"
xrandr --output VGA-1 --mode "new"

od file
hexdump file

ping $1 -s 65507 127.0.0.1

xdotool click --repeat X --delay X 1

cnee --record -o a.xnr --mouse --keyboard --events-to-record X --time X
cnee --replay -f a.xnr --time X

wine a.exe
wineconsole --backend=user a.exe
winecfg

fbc a.bas
fbc -lang qb a.bas

fpc a.pas
ppcross386 -Twin32 a.pas

i686-w64-mingw32-gcc -o a.exe a.c
x86_64-w64-mingw32-gcc -o a.exe a.c

gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lgnustep-base -lobjc a.m -o a

git config --global user.email "E-mail address"
git config --global user.name "Username"
git clone repository.git
git add .
git commit -m "Initial commit"
git push origin master

ifconfig
ip addr

curl ifconfig.me
curl ifconfig.co
curl icanhazip.com
curl ipecho.net/plain

img2pdf *.jpg --output file.pdf
for ((a=1; a<=X; a++)) do let b=$a && cd "directory $b" && img2pdf *.jpg --output $b.pdf && mv $b.pdf .. && cd ..; done

pdftk *.pdf cat output file.pdf
pdftk $(find ./ -name "*.pdf" | sort -V) cat output file.pdf

cat $(find ./ -name "*.ts" | sort -V) > file.ts

find -type f -exec mv -v {} . \;

tr -s " " < file > file2

while read value; do
	echo "$value" | tr "\t" " "
done <$1> $2

echo -ne "n\0m\0k" >> file

free -m && ps -eo size,pid,user,command --sort -size | awk '{ hr=$1/1024 ; printf("%13.2f MB ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | cut -d "" -f2 | cut -d "-" -f1

#!/sbin/openrc-run
pulseaudio --system

#!/sbin/openrc-run
swapon /dev/sda3

# /etc/init.d
rc-update add dbus default
rc-update add pulseaudio default
rc-update add swapon default

# /etc/X11/xinit/xinitrc
exec i3

# $HOME/.config/i3/config
exec ./new.sh
exec xrdb -merge /etc/X11/Xresources
exec "setxkbmap -layout tr,us"
bindsym Ctrl+$mod+e exec "setxkbmap us"
bindsym Ctrl+$mod+t exec "setxkbmap tr"
bindsym Shift+$mod+s exec "scrot"

emerge --sync
emerge -avuDN --with-bdeps y --keep-going world
etc-update
emerge -av --depclean
revdep-rebuild
eclean -d distfiles
eselect news list
eselect news read

ls /var/db/pkg/*
emerge world -ep

gpasswd -a username tty

modprobe nbd
modprobe nbd max_part=16
qemu-nbd -c /dev/nbd0 "file.vdi"
mkdir /mnt/vdi
mount /dev/nbd0pX /mnt/vdi
cd /mnt/vdi
umount /dev/nbd0pX
qemu-nbd --disconnect /dev/nbd0

emerge --ask sys-apps/lm-sensors
emerge --ask media-sound/alsa-utils
emerge --ask sys-apps/dbus
emerge --ask x11-terms/xterm
emerge --ask x11-wm/i3
emerge --ask x11-misc/i3status
emerge --ask media-gfx/scrot

# https://wiki.gentoo.org/wiki/Handbook:AMD64/Full/Installation
# https://wiki.gentoo.org/wiki/AMDGPU
# https://wiki.gentoo.org/wiki/Radeon
# https://wiki.gentoo.org/wiki/Nouveau
# https://wiki.gentoo.org/wiki/ALSA
# https://wiki.gentoo.org/wiki/PulseAudio
# https://wiki.gentoo.org/wiki/Xorg/Guide
# https://wiki.gentoo.org/wiki/QEMU
# https://wiki.gentoo.org/wiki/Android_USB_Tethering
# https://wiki.gentoo.org/wiki/Iphone_USB_Tethering
