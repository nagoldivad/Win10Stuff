# My Windows 11 install routine


## Introduction

This document details my personal procedure to set up a Windows 11 system. This is a work in progress, as I still have a lot to learn about Windows 11.


## Install WinGet

Documentation and download is on [learn.microsoft.com](https://learn.microsoft.com/en-us/windows/package-manager/winget/)


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
	"AntibodySoftware.WizTree"
)

foreach ($app in $apps) {
    winget install -e --id $app
}
```

## Install Phone Link

If you have an iPhone you can connect it to Windows 11 by using the Phone Link app. Learn how to install a set up the Phone Link app [here](https://www.microsoft.com/en-us/windows/sync-across-your-devices)


## Move taskbar to left side of screen

1. Download [ExplorerPatcher](https://github.com/valinet/ExplorerPatcher) and run it.
2. Go to Settings and choose "Primary taskbar location on screen: left"
3. Then click Click "Restart File Explorer"


## Debloat stuff

I haven't been using debloat scripts or apps on Windows 11, but here are some options if/when I decide to...

* https://github.com/Raphire/Win11Debloat
* https://www.oo-software.com/en/shutup10
* https://christitus.com/windows-tool/


## Settings that can speed up Windows 10

### Disable file indexing

Right-click on Local Disk (C:) drive in File Explorer -> Properties -> Uncheck "Allow files on this drive to have content indexed in addition to file properties"