# Install Powershell modules
Write-Host "Installing and configuring PowerShell Modules..." -ForegroundColor "Yellow"
Install-Module Posh-Git -Scope CurrentUser -Force
Install-Module PSWindowsUpdate -Scope CurrentUser -Force
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name Z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Force -SkipPublisherCheck

# Configuring symlinks
const $powerShellPath = (Split-Path -parent $PROFILE)
# Profile
New-Item -ItemType SymbolicLink -Path $PROFILE -Value (Get-Item "~\.dotfiles\configs\powershell\danicaus_profile.ps1").FullName -Force

# Oh-my-posh
New-Item -ItemType SymbolicLink -Path "$powerShellPath\danicaus.omp.json" -Value (Get-Item "~\.dotfiles\configs\powershell\danicaus.omp.json").FullName

# Settings
New-Item -ItemType SymbolicLink -Path "$powerShellPath\settings.json" -Value (Get-Item "~\.dotfiles\configs\powershell\settings.json").FullName
