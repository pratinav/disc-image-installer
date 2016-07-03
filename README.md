# Disc Image Installer for Mac
An installer for disc image files (.img files) to flash media/storage devices (For Mac)

![showcase](http://i.imgur.com/Zm5Ltxa.jpg)

## Installation
- Run `sh <(curl -s https://cdn.rawgit.com/pratinav/disc-image-installer/master/install)`
- Voilà, Your install is done!

## Usage
The command for the disc image installer is `installimg`

Usage:  `installimg <disk> <path to disc image file`

Example:  `installimg disk2 some-img-file.img`

*You may be prompted to enter your password*

**Options-**
- `installimg --help` or `installimg -h` - Displays usage
- `installimg --version` or `installimg -v` - Displays the installed version, of disc image installer, on your system
- `installimg --update` - Updates disc image installer to the latest available version
- `installimg --uninstall` - Uninstalls disc image installer from your system

There are two methods to find out the **disk** for your device, using Disk Utility-
- From the GUI-
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

## Update
To update disc image installer, run-
```
installimg --update
```

## Uninstallation
To remove disc image installer from your system, simply run-
```
installimg --uninstall
```

## Contributing
You can contribute to this project by-
- Fixing any bugs or adding new features by sending in a [pull request](https://github.com/pratinav/disc-image-installer/pulls)
- Filing an [issue](https://github.com/pratinav/disc-image-installer/issues) regarding a bug, a feature request or any other topic.

## Dependencies
- [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml)- 1.6.0

## License
Copyright (c) 2016 Pratinav Bagla

This content is released under [The MIT License](https://github.com/pratinav/disc-image-installer/blob/master/LICENSE.txt).