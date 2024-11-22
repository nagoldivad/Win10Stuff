# My Windows 11 install routine

2024 October
(last updated 2024 November)


## Introduction

This document details my personal procedure to set up a Windows 11 system. This is a work in progress, as I still have a lot to learn about Windows 11. However, everything in this document has been confirmed to work properly, with the exception of the debloat scripts.


## Optional: with a fresh install, use a local account

The following comes from [an article on pureinfotech.com](https://pureinfotech.com/bypass-internet-connection-install-windows-11/). I have used this procedure and can comfirm that it works well.

1. On the “Oops, you’ve lost internet connection” or “Let’s connect you to a network” page, use the "Shift + F10" keyboard shortcut.

2. In Command Prompt, type the OOBE\BYPASSNRO command to bypass network requirements on Windows 11 and press Enter.

3. The computer will restart automatically, and the out-of-box experience (OOBE) will start again.

4. Quick note: You will need to select the region and keyboard settings again to get to the network connection page.

5. Click the “I don’t have internet” option.

6. Click the “Continue with limited setup” option.

7. Click the Accept button (if applicable).


## Install WinGet

Documentation and download is on [learn.microsoft.com](https://learn.microsoft.com/en-us/windows/package-manager/winget/)


## Install PowerShell 7

```winget install Microsoft.PowerShell```

Verify the install with ```$PSVersionTable.PSVersion```


## Use WinGet to install these apps

```
$apps = @(
    "Notepad++.Notepad++",
    "Mozilla.Firefox",
    "Google.Chrome",
    "Git.Git",
    "Microsoft.VisualStudioCode",
    "VLC.VLC",
    "7zip.7zip",
    "OpenJS.NodeJS",
	"SumatraPDF.SumatraPDF",
	"Nikkho.FileOptimizer",
	"Flywheel.Local",
	"AntibodySoftware.WizTree",
	"GIMP.GIMP",
	"REALiX.HWiNFO",
	"Dropbox.Dropbox",
	"Amazon.Kindle",
	"Amazon.SendToKindle"
)

foreach ($app in $apps) {
    winget install -e --id $app
}
```


## Move taskbar to left side of screen

1. Download [ExplorerPatcher](https://github.com/valinet/ExplorerPatcher) and run it.
2. Go to Settings and choose "Primary taskbar location on screen: left"
3. Then click "Restart File Explorer"


## Optional: Install Intel Arc Control

[Download from Intel's website](https://www.intel.com/content/www/us/en/products/docs/discrete-gpus/arc/software/arc-control.html)


## Optional: Install Phone Link

If you have an iPhone you can connect it to Windows 11 by using the Phone Link app. Learn how to install and set up the Phone Link app [here](https://www.microsoft.com/en-us/windows/sync-across-your-devices)


## Install WSL

See [How to install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install) on Microsoft Learn. To install debian use an admin PowerShell: ```wsl --install -d debian```


## Debloat stuff

I haven't been using debloat scripts or apps on Windows 11, I've only used O & O Shutup 11, but here are some options if/when I decide to...

* https://www.oo-software.com/en/shutup10
* https://github.com/Raphire/Win11Debloat
* https://christitus.com/windows-tool/


## Settings that can speed up Windows 11


### Disable file indexing

Right-click on Local Disk (C:) drive in File Explorer -> Properties -> Uncheck "Allow files on this drive to have content indexed in addition to file properties"
