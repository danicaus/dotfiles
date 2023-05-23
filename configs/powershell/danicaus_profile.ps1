# Prompt
# Import-Module oh-my-posh
Import-Module posh-git
Import-Module -Name Terminal-Icons

# Carrega configurações do prompt
oh-my-posh init pwsh --config '~\.config\PowerShell\danicaus.omp.json' | Invoke-Expression

# Navegação com autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Adaptando comandos do teclado
Set-Alias vim nvim
Set-Alias g git