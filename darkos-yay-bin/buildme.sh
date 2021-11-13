#!/bin/bash
tput setaf 2
echo "# Building Packages Through Chroot Environment"
echo "#############################################"
tput setaf 1
makepkg
echo "#############################################"
echo "# Let's sign our packages"
gpg --detach-sign *.pkg.tar.zst
tput setaf 8
echo "#############################################"
echo "# Done :D "
tput setaf 9
echo "#############################################"
echo "# Cleaning Up The Miss The building Process left for us"
tput setaf 1
rm -rf src pkg *.tar.gz
echo "#############################################"
echo "# WE ARE DONE :D"

