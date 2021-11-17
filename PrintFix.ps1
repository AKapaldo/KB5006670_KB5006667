<#
.Synopsis
Used to add or remove registry values to fix printing issues on Windows 10 machines after installing KB5006667 or KB5006670.
.Description
Used to add or remove registry values to fix printing issues on Windows 10 machines after installing KB5006667 or KB5006670.
.Notes
Must be run as admin.
Author: Andrew Kapaldo
Version: 1.10
#>

# Set Variables
$overrides = 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides'
$path = Test-Path -Path $overrides
$Win10Ver = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion').DisplayVersion

$install = Read-Host "1. Add Registry Entry`n2. Remove Registry Entry`nEnter a number"

# Add Registry Entries
if ($install -eq "1"){
    if ($Win10Ver -eq "2004" -or $Win10Ver -eq "20H2" -or $Win10Ver -eq "21H1" -or $Win10Ver -eq "21H2"){
        if ($path -eq $True){
            New-ItemProperty -Path $overrides -Name '713073804' -Value 0
        }
        else{
            New-Item -Path $overrides -Force
            New-ItemProperty -Path $overrides -Name '713073804' -Value 0
        }
    }
    elseif ($Win10Ver -eq "1909") {
        if ($path -eq $True){
            New-ItemProperty -Path $overrides -Name '1921033356' -Value 0
        }
        else{
            New-Item -Path $overrides -Force
            New-ItemProperty -Path $overrides -Name '1921033356' -Value 0
        }
    }
    elseif ($Win10Ver -eq "1809"){
        if ($path -eq $True){
            New-ItemProperty -Path $overrides -Name '3598754956' -Value 0
        }
        else{
            New-Item -Path $overrides -Force
            New-ItemProperty -Path $overrides -Name '3598754956' -Value 0
        }
    }
    else {
        Write-Warning "Windows version not supported by this fix."
    }

    # Force Feature Reconcile
    Get-ScheduledTask -TaskName "ReconcileFeatures" | Start-ScheduledTask
    Write-Warning "PC must be restarted to apply changes!"
}

# Remove Registry Entries
elseif ($install -eq "2"){
    $1809 = (Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides').3598754956
    $1909 = (Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides').1921033356
    $2004 = (Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides').713073804

    if ($1809 -ne $null){
        Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides' -Name '3598754956'
    }
    if ($1909 -ne $null){
        Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides' -Name '1921033356'
    }
    if ($2004 -ne $null){
        Remove-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Policies\Microsoft\FeatureManagement\Overrides' -Name '713073804'
    }
    
}

else{
    Write-Warning "Invalid input. Enter 1 for adding entries or 2 to remove them."
}

Start-Sleep -Seconds 15
Stop-Process -Id $PID
