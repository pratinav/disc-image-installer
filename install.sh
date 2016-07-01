#!/bin/bash
# NOTE- The script has to be run as root
# Usage:  sudo sh install.sh

if [ "$EUID" -ne 0 ]
then
    printf "Please run as root\nUsage:\tsudo sh install.sh\n" && exit 1
fi

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir /usr/local/installimg || { exit 1; }
cp $wd/disc-image-installer.sh $wd/README.md /usr/local/installimg || { exit 1; }
chmod u+x /usr/local/installimg/disc-image-installer.sh || { exit 1; }
ln -s ../installimg/disc-image-installer.sh /usr/local/bin/installimg || { exit 1; }

printf "Disc Image Installer has been installed succesfully.\nTo use the image installer, run:\n  sudo installimg <disk> <disc image file path>\nFor more information-  https://github.com/pratinav/disc-image-installer\n"

exit 0
