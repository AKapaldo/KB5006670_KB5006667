<#
.Synopsis
Repair print issues caused by Windows Hotfix KB5006667
.Description
Uses a set of good spooler files from a pre-KB5006667 machine to repair the spooler service.
.Notes
You will need to source a LocalSpl.dll, SpoolSv.exe, and Win32Spl.dll file from a pre-KB5006667 patch machine or remove KB5006667 and then copy the files.

Author: Andrew Kapaldo
Date: November 3, 2021
Version: 1.0
#>

# Set Variables
$spoolerPath = "C:\Windows\System32\"
$spoolerNew = Join-Path -Path $spoolerPath -ChildPath "_PrintSpooler\"
$repairFile = "" #Add file path to known good files here.

# Repair if system has KB5006667
If (Get-HotFix -ID KB5006667 -ErrorAction SilentlyContinue) {
write-Host "Windows Hotfix KB5006667 was found on this system..."

Write-Host "Stopping Spooler service..."
Stop-Service -Name Spooler

Write-Host "Creating new folder..."
New-Item -Path $spoolerPath -Name "_PrintSpooler" -Type Directory | Out-Null

Write-Host "Copying old files as backup..."
Copy-Item -Path "C:\Windows\System32\localspl.dll" -Destination $spoolerNew
Copy-Item -Path "C:\Windows\System32\spoolsv.exe" -Destination $spoolerNew
Copy-Item -Path "C:\Windows\System32\win32spl.dll" -Destination $spoolerNew

Write-Host "Copying replacement files..."
Copy-Item -Path "$repairFile/localspl.dll" -Destination $spoolerPath -Force
Copy-Item -Path "$repairFile/spoolsv.exe" -Destination $spoolerPath -Force
Copy-Item -Path "$repairFile/win32spl.dll" -Destination $spoolerPath -Force

Write-Host "Restarting Spooler service..."
Start-Service -Name Spooler

Write-Host "Print fix complete!"
}

# System doesn't have 
Else{
Write-Warning "Hotfix KB5006667 Not found."
}

Start-Sleep -Seconds 10
Stop-Process -ID $PID
