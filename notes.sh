#!/bin/bash

sudo service network-manager restart

cvt 1440 900
xrandr --newmode "new" 106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
xrandr -q
xrandr --addmode VGA-1 "new"
xrandr --output VGA-1 --mode "new"

gsettings set com.canonical.Unity.Launcher launcher-position Bottom

xxd -b file

ping $1 -s 65507 127.0.0.1

sudo apt-get install xdotool
xdotool click --repeat X --delay X 1

sudo apt-get install cnee
cnee --record -o a.xnr --mouse --keyboard --events-to-record X --time X
cnee --replay -f a.xnr --time X

sudo apt-get install wine
wine a.exe
wineconsole --backend=user a.exe
winecfg

sudo apt-get install libncurses5-dev
fbc a.bas
fbc -lang qb a.bas

sudo apt-get install fpc
fpc a.pas
ppcross386 -Twin32 a.pas

sudo apt-get install mingw-w64
i686-w64-mingw32-gcc -o a.exe a.c
x86_64-w64-mingw32-gcc -o a.exe a.c

sudo apt-get install gnustep
sudo apt-get install gnustep-devel
gcc `gnustep-config --objc-flags` -Wl,--no-as-needed -lgnustep-base -lobjc a.m -o a

sudo apt-get install git
git config --global user.email "E-mail address"
git config --global user.name "Username"
git clone repository.git
git add .
git commit -m "Initial commit"
git push origin master

sudo apt-get install ttf-mscorefonts-installer

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fontconfig-infinality
sudo bash /etc/fonts/infinality/infctl.sh setstyle
sudo -H gedit /etc/profile.d/infinality-settings.sh
USE_STYLE="WINDOWS7"
sudo reboot

ifconfig
dig +short myip.opendns.com @resolver1.opendns.com
dig TXT +short o-o.myaddr.l.google.com @ns1.google.com
host myip.opendns.com resolver1.opendns.com
sudo apt-get install curl
curl ifconfig.me
curl ifconfig.co
curl icanhazip.com
curl ipecho.net/plain

echo -ne "n\0m\0k" >> file
