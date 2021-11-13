#!/bin/bash
tput setaf 2
echo "# Running makepkg To Build Package"
echo "#############################################"
makepkg
tput setaf 5
echo "#############################################"
tput setaf 4
echo "#############################################" 
echo "# Let's sign our packages"
gpg --detach-sign darkos*.pkg.tar.zst
tput setaf 8
echo "#############################################" 
echo "# Done :D "
tput setaf 9 
echo "#############################################"
echo "# Cleaning Up The Miss The building Process left for us"
tpuf setaf 1 
rm -rf darkos-wallpapers
echo "#############################################"
echo "# WE ARE DONE :D"
