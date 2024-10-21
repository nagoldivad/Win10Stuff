<#
PowerShell profile
Created by David Logan (nagoldivad@gmail.com)
Last updated Feb 2018

This profile is for PowerShell 5
It should be kept at ~\Documents\WindowsPowerShell\MicrosoftPowerShell_profile.ps1
or... for PowerShell 7
$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
#>

# ==== Set some info in the console's title bar

# (copied from "PowerShell In Depth" 2nd Edition)

# determine if 32 bit or 64 bit
if ([System.IntPtr]::Size -eq 8) {$size = '64 bit'}
else {$size = '32 bit'}
#  get Windows Principal Object
$currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
$secprin = New-Object Security.Principal.WindowsPrincipal $currentUser
# deterine if elevated
if ($secprin.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
{$admin = 'Administrator'}
else {$admin = 'non-Administrator'}
# set window title
$host.ui.RawUI.WindowTitle = "$admin $size"

# ==== Welcome message

<# FIX:
Don't use whoami
use $env:UserDomain and $env:ComputerName
or [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
#>
$myPSVersionMajor = ($PSVersionTable.PSVersion).Major
$myPSVersionMinor = ($PSVersionTable.PSVersion).Minor
$mywhoami = whoami
Write-Host -ForeGround DarkGreen "Welcome to PowerShell version " -NoNewLine
Write-Host -ForeGround DarkGreen "$myPSVersionMajor" -NoNewLine
Write-Host -ForeGround DarkGreen "." -NoNewLine
Write-Host -ForeGround DarkGreen "$myPSVersionMinor"
Write-Host -ForeGround DarkGreen "Logged in as $mywhoami `n"
# Environment info
Write-Host -ForeGround DarkGreen "Execution policy: " -NoNewLine
Get-ExecutionPolicy
Write-Host " "

# ==== Custom prompt

function prompt {
    Write-Host -ForegroundColor Cyan "PS " -NoNewLine
    Write-Host -ForegroundColor Magenta "$env:USERNAME" -NoNewLine
    Write-Host -ForegroundColor Gray "@$env:COMPUTERNAME" -NoNewLine
    Write-Host " $($executionContext.SessionState.Path.CurrentLocation) " -NoNewLine
    Write-Host "$('>' * ($nestedPromptLevel + 1)) " -NoNewLine
    return " "
    }

# ==== Aliases

#Set-Alias ll Get-ChildItem

# ==== Functions

function ll {
$myDirListing = Get-ChildItem -Force

    Write-Host -BackgroundColor Gray -ForegroundColor Black "Mode`tModified`t`tSize`tName`t`t`t"

    foreach ( $i in $myDirListing ) {
        # Mode
        Write-Host $i.Mode -NoNewLine
        Write-Host "`t" -NoNewLine
        # LastWriteTime
        Write-Host $i.LastWriteTime -NoNewLine
        Write-Host "`t" -NoNewLine
        # Length
        Write-Host (($i.Length / 1024).toString("#.#")) -NoNewLine
        Write-Host "`t" -NoNewLine
        # Name
        switch -wildcard ($i.Mode)
        {
            "d*" { Write-Host -ForegroundColor Blue $i.Name }
            default { Write-Host $i.Name }
        }
    
    } # foreach
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
