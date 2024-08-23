# Create symlink
New-Item -Path "~\.gitconfig" -ItemType SymbolicLink -Value (Get-Item "~\dotfiles\configs\gitconfig\.gitconfig").FullName