#!/bin/bash
tput setaf 5
echo "#############################################"
makepkg
tput setaf 4
echo "#############################################" 
echo "# Let's sign our packages"
gpg --detach-sign darkos*.pkg.tar.xz
tput setaf 8
echo "#############################################" 
echo "# Done :D "
tput setaf 9 
echo "#############################################"
echo "# Cleaning Up The Miss The building Process left for us"
tput setaf 1
rm -f *.log
echo "#############################################"
echo "# WE ARE DONE :D"
