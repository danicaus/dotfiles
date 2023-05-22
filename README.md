# Meus dotfiles

Aqui estão algumas configurações que curto na minha máquina Windows.

# Configuraçôes iniciais

Antes de executar os dotfiles, é necessário que a máquina tenha:
- Terminal
- Git
```powershell
  winget install --id Git.Git -e --source winget
```

# Setup dos dotfiles

- Instalar os módulos do PowerShell indicados no [README](./.config/README.md)
- Clonar esse repositório na pasta do usuário
- Executar o symlink
- Carregar o profile do Powershell

Em resumo:

```powershell
  git clone https://github.com/danicaus/dotfiles.git ~\.dotfiles
  . ~\.dotfiles\symlink.ps1
  . $PROFILE
```
