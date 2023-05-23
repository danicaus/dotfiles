# Install Powershell modules
Write-Host "Installing PowerShell Modules..." -ForegroundColor "Yellow"
Install-Module Posh-Git -Scope CurrentUser -Force
Install-Module PSWindowsUpdate -Scope CurrentUser -Force
Install-Module oh-my-posh
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Force -SkipPublisherCheck


# Configuring symlinks
# Profile
if (!(Test-Path "'~\.config\PowerShell")) {New-Item -Path "'~\.config\PowerShell" -Type Folder | Out-Null}
New-Item -Path '~\.config\PowerShell\Microsoft.PowerShell_profile.ps1' -ItemType SymbolicLink -Value (Get-Item "~\.dotfiles\configs\powershell\danicaus_profile.ps1").FullName

# Oh-my-posh
New-Item -Path '~\.config\PowerShell\danicaus.omp.json' -ItemType SymbolicLink -Value (Get-Item "~\.dotfiles\configs\powershell\danicaus.omp.json").FullName

# Settings
New-Item -Path '~\.config\PowerShell\settings.json' -ItemType SymbolicLink -Value (Get-Item "~\.dotfiles\configs\powershell\settings.json").FullName
