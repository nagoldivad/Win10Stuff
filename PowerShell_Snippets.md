# PowerShell snippets

Snippets of PowerShell goodness


### Import a CSV

```
try {
    $myCsvFile = Import-CSV $csvFilePath -ErrorAction Stop
}
catch {
    Write-Host -ForegroundColor Red "Add-MySPUser: Error: csvFilePath is bad, cannot load file`n" $($_.Exception.GetType().FullName) $($_.Exception.Message)
    break
}
if ( !$silent ) { Write-Host "Add-MySPUser: CSV file $csvFilePath successfully loaded." }

```


### Connect to server with PnP

DEPENDENCY: PnP PowerShell must be installed (See: [PnP PowerShell overview](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps))


```
# ==== Get credentials and connect to server

# Hardcoded credentials
<#
$SiteUrl = ''
$UserName = ''
$Password = ''
$SecurePassword = $Password | ConvertTo-SecureString -AsPlainText -Force
$plainCred = New-Object system.management.automation.pscredential -ArgumentList $UserName, $SecurePassword
Connect-PnPOnline -Url $SiteUrl -Credentials $plainCred
#>

# Prompt for credentials
$cred = get-credential
Connect-PnPOnline -Url $SiteUrl -Credentials $cred
```