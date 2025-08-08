$adminUser = "Administrator"
$adminPass = "Your_Password"

# Check if running with elevated privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "❌ This script must be run as Administrator." -ForegroundColor Red
    exit
} else {
    Write-Host "✅ Running with Administrator privileges." -ForegroundColor Green
}

# Enable the Administrator account
Enable-LocalUser -Name $adminUser
Write-Host "✅ Local user '$adminUser' has been enabled." -ForegroundColor Green

# Set the password
$securePass = ConvertTo-SecureString $adminPass -AsPlainText -Force
Set-LocalUser -Name $adminUser -Password $securePass
Write-Host "✅ Password for '$adminUser' has been set successfully." -ForegroundColor Green

# Get the name of the active Ethernet adapter
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.Name -like "Ethernet*" }

if ($adapter) {
    # Set the DNS server address
    Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ServerAddresses ("DNS_IP")
    Write-Host "✅ DNS server address set to DNS_IP for adapter '$($adapter.Name)'." -ForegroundColor Green
} else {
    Write-Host "❌ No active Ethernet adapter found." -ForegroundColor Red
}


# Get the High Performance power scheme GUID
$highPerf = (powercfg -l | Where-Object { $_ -like "*High performance*" }) -replace ".*([A-F0-9\-]{36}).*", '$1'

# Set High Performance as the active plan
powercfg -setactive $highPerf

# Set display timeout to Never (0 minutes) when plugged in
powercfg -change -monitor-timeout-ac 0

# Set sleep timeout to Never (0 minutes) when plugged in
powercfg -change -standby-timeout-ac 0

Write-Output "High performance plan set and timeouts updated to Never (AC power)."
