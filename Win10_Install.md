# Windows 10 Install Procedure

This is my procedure that I follow after installing Windows 10. Some of these steps might need to be repeated after a Windows 10 upgrade.


## Version

This applies to Windows 10 Version 21H1 (10.0.19043 Build 19043) or later. However, most of what is found here will probably apply to any version of Windows 10.


## First steps

I get the Windows 10 Media Creation Tool from [here](https://www.microsoft.com/en-us/software-download/windows10ISO) then perform the install. After the install and initial set-up, reboot Windows, go to Settings then Windows Update, and perform all updates. After the updates you'll probably have to reboot, and may have to perform this step several times if there are a lot of updates.


## Remove bloatware

Use the Windows10Debloater PowerShell script: [Windows10Debloater on GitHub](https://github.com/Sycnex/Windows10Debloater)


## Install Winget

Download the winget installer [from here.](https://github.com/microsoft/winget-cli/releases) Then use Winget to install the apps you want.


## Use O&O ShutUp10

Download [O&O ShutUp10](https://www.oo-software.com/en/shutup10), and use it to shut down Win10's telemetry and other annoying stuff.


## Settings that can speed up Windows 10


### Disable file indexing

Right-click on Local Disk (C:) drive in File Explorer -> Properties -> Uncheck "Allow files on this drive to have content indexed in addition to file properties"


### Disable Windows Search.

[Example/instructions](https://www.howtogeek.com/howto/10246/how-to-disable-search-in-windows-7/)


### Power settings

Open Settings, click on "System" -> Power & Sleep  -> Additional power settings -> "Show/Hide additional plans" or "Create a power plan" -> choose "High performance"


## Errata


### Set a meaningful hostname

Open Settings, click "System", then "About", scroll down and click the "Rename this PC" button. (It'll take effect after next reboot).


### Upgrade to the latest version of PowerShell

In the PowerShell terminal, just use winget: `winget install Microsoft.PowerShell` will upgrade to the latest version.
