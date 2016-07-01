# Disc Image Installer for Mac
An installer for disc image files (.img files) to flash media/storage devices (For Mac)

## Installation
- [Download](https://github.com/pratinav/disc-image-installer/archive/master.zip) and unzip the repository
- Open the terminal and navigate to the repository folder
- Execute  `sudo sh install.sh`, and enter your password when prompted to
- Voila! Install completed.

*You may delete the downloaded folder once the install is complete*

## Usage
The command for the disc image installer is `installimg`

Usage:  `sudo installimg <disk> <path to image file`

Example:  `sudo installimg disk2 some-img-file.img`

There are two methods to find out the **disk** for your device-
- From Disk Utility-
    - Insert the device into your computer.
    - Launch **Disk Utility**
    ![exmaple](http://i.imgur.com/4xg4WMq.jpg)
    - Select the disk and click on 'info'
    ![exmaple](http://i.imgur.com/rUSOccP.jpg)
    - Look for **BSD Device Node** in the information panel. That is your 'disk'.
    ![example](http://i.imgur.com/niObbg9.jpg)

**OR**

- From the terminal-
    - Insert the device into your computer.
    - Open terminal, and execute  `diskutil list`
    - Identify the disk corresponding to your device, example: `/dev/disk2`
    - If `/dev/disk2` is your device, your 'disk' is `disk2`
    ![exmaple](http://i.imgur.com/T1QbWAf.jpg)

**Make sure your device is formatted properly**

## License
Copyright (c) 2016 Pratinav Bagla

This content is released under [The MIT License](https://github.com/pratinav/disc-image-installer/blob/master/LICENSE.txt).