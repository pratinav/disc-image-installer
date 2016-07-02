#!/usr/bin/env bash
# Usage:  sh install.sh

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp $wd/installimg /usr/local/bin \
|| { echo 'File copying failed!\nInstallation aborted.' >&2; exit 1; }

chmod +x /usr/local/bin/installimg \
|| { echo 'Could not change file permissions!\nInstallation aborted.' >&2; exit 1; }

echo 'Disc Image Installer has been installed succesfully.'
echo 'To use the image installer, run:'
echo '  installimg <disk> <disc image file path>'
echo 'For more information-  https://github.com/pratinav/disc-image-installer'

exit 0
