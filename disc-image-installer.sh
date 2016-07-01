#!/bin/bash

# Disc Image Installer for Mac v1.0.0
# An installer for disc image files (.img files) to flash media/storage devices (For Mac)

# Copyright (c) 2016 Pratinav Bagla (https://pratinav.xyz)
# Released under the MIT License (https://github.com/pratinav/disc-image-installer/blob/master/LICENSE.txt)

# NOTE- The script has to be run as root
# Usage:  sudo installimg <disk> <image file>
# Example:  sudo installimg disk2 some-disc-image.img
# For more information-  https://github.com/pratinav/disc-image-installer

if [ "$EUID" -ne 0 ]
then
    printf "Please run as root\nUsage:\tsudo installimg <disk> <image file>\n" && exit 1
fi

if [ "$#" -ne 2 ]
then
    printf "Invalid arguments\nUsage:\tsudo installimg <disk> <image file>\n" && exit 1
fi

printf "Unmounting device\n"
sudo -u $SUDO_USER diskutil unmountDisk /dev/$1 || { exit 1; }

printf "Beginning write\nThis may take a few minutes...\n"
dd bs=1m if=$2 of=/dev/r$1 || dd bs=1M if=$2 of=/dev/r$1 || dd bs=1m if=$2 of=/dev/$1 || dd bs=1M if=$2 of=/dev/$1 || { exit 1; }

printf "Image succesfully installed.\n"

printf "Ejecting device\n"
sudo -u $SUDO_USER diskutil eject /dev/$1 || { exit 1; }

printf "Done. It is now safe to remove your device\n"

exit 0
