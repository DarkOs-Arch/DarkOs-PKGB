#!/bin/bash
tput setaf 2
echo "# Building Packages Through Chroot Environment"
echo "#############################################"
tput setaf 1
makepkg
echo "#############################################" 
echo "# Let's sign our packages"
gpg --detach-sign font*.pkg.tar.*
tput setaf 8
echo "#############################################" 
echo "# Done :D "
tput setaf 9 
echo "#############################################"
echo "# Cleaning Up The Miss The building Process left for us"
tput setaf 1
rm -f *.log
rm -rf pkg src $1
echo "#############################################"
echo "# WE ARE DONE :D"
