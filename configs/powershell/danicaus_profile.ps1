# Prompt
Import-Module posh-git
Import-Module -Name Terminal-Icons

# Carrega configurações do prompt
$powerShellPath = (Split-Path -parent $PROFILE)
oh-my-posh init pwsh --config "$powerShellPath\danicaus.omp.json" | Invoke-Expression
fnm env --use-on-cd --shell power-shell | Out-String | Invoke-Expression

# Navegação com autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Adaptando comandos do teclado
Set-Alias g git