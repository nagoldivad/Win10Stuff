# Windows 10 Install Procedure

This is my procedure that I follow after installing Windows 10. Some of these steps might need to be repeated after a Windows 10 upgrade. 

## Remove bloatware

Use the Windows10Debloater PowerShell script: [Windows10Debloater on GitHub](https://github.com/Sycnex/Windows10Debloater)


## Install Chocolately

Install Chocolately package manager... [Instructions here.](https://chocolatey.org/install)
Then install software...

Example of my initial install:
```
choco install -y 7zip adobereader calibre cpu-z crystaldiskinfo crystaldiskmark dropbox FileOptimizer filezilla Firefox geany gimp GoogleChrome InkScape MusicBee notepadplusplus SharePointDesigner2013x32 shutup10 sumatrapdf vscode windirstat wsltty xnview hwinfo
```


## O&O ShutUp10

Now that [O&O ShutUp10](https://www.oo-software.com/en/shutup10) is installed (via choco), use it to shut down Win10's annoying telemetry stuff. Then reboot.


## Install Sumatra PDF?

For reasons I don't understand installing Sumatra PDF from [the website](https://www.sumatrapdfreader.org/free-pdf-reader.html) seems to make it run better -- probably remove it from the choco list and just install it old school.


## Install WSL Windows Subsystem for Linux

In an administrative PowerShell: Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

Then install Ubuntu 18.04 from the Windows Store

Then click the "Ubuntu 18.04" icon and it'll install some stuff, then it'll prompt for a username and password. After that just use WSL Terminal (install via choco) for all your linux terminal needs (and use the Nord theme).


## Settings that will speed up Windows 10

### Disable file indexing

Right-click on drive in File Explorer -> Uncheck "Allow files on this drive to have content indexed in addition to file properties"

### Disable Windows Search. 

[Example/instructions](https://www.howtogeek.com/howto/10246/how-to-disable-search-in-windows-7/)

### Disable "Delivery Optimation"

Settings -> Windows Update -> Advanced options -> Delivery Optimization -> turn off "Allow downloads from other PCs"

### Power settings

RIght-click on Windows menu -> Additional power settings -> "Show/Hide additional plans" or "Create a power plan" -> choose "High performance


## Errata

### Set a meaningful hostname

Open Settings, click "System", then "About", scroll down and click the "Rename this PC" button. (It'll take effect after next reboot).

### Host file ad/malware blocking

Make necessary additions and changes to the hosts file. I add local hosts, and usually append [Steven Black's adware + malware](https://github.com/StevenBlack/hosts) or something similar.


## More resources

[Make Windows Fast](https://youtu.be/nVy4GAtkh7Q) YouTube by Chris Titus Tech
