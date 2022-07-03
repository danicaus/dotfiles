# Profile
New-Item -Path ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -ItemType SymbolicLink -Value (Get-Item ".\powershell\danicaus_profile.ps1").FullName

# Oh-my-posh
New-Item -Path ~\Documents\PowerShell\danicaus.omp.json -ItemType SymbolicLink -Value (Get-Item ".\powershell\danicaus.omp.json").FullName

# .gitconfig
New-Item -Path ~\.gitconfig -ItemType SymbolicLink -Value (Get-Item ".\.gitconfig\.gitconfig").FullName