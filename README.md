# Meus dotfiles

Aqui estão algumas configurações que curto na minha máquina Windows 10.

# Setup dos dotfiles

```shell
  git clone https://github.com/danicaus/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
  New-Item -ItemType SymbolicLink -Path ~\.dotfiles\.config -Value ~\.config
```

# .config

Configurações do Powershell. Depois de instalar os módulos descritos no README da pasta ./config, digitar o comando `code $PROFILE` para abrir o arquivo de configuração do Powershell no VS Code.

Copiar o seguinte comando:

```shell
. $env:USERPROFILE\.config\powershell\danicaus_profile.ps1
```

