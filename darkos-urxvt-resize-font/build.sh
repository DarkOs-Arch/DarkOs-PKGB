#!/usr/bin/env bash
makepkg
rm -rf pkg src
gpg --detach-sign *.tar.*
rm -f *.tar.gz
