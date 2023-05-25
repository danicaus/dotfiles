# Configurações do Shell no Windows

Muito baseado no que aprendi [nesse video](https://www.youtube.com/watch?v=5-aK2_WwrmM).

[Artigo com umas explicações](https://dev.to/dannyviiprus/improve-window-powershell-promt-with-oh-my-posh-and-more-20md)

## Nerd fonts

É importante ter uma fonte compatível com ícones no Powershell. Eu curti bastante a 'Cartograph CF' e a 'JetBrains Mono'.

[Download no Github](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono) - JetBrains Mono

## Windows Terminal e PowerShell ^7.0

[Microsoft Store - Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)

[Microsoft Store - Powershell](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=pt-br&gl=BR)


## Módulos do Powershell

### Oh My Posh

Programa para configuração do Powershell (sim, no Windows). Deixa ele mais bonitinho, colocando temas.

[Site](https://ohmyposh.dev/)

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

### Posh git

Programa para autocomplete no git.

[Site](https://github.com/dahlbyk/posh-git)

```powershell
Install-Module posh-git -Scope CurrentUser -Force
```

### Terminal Icons

Para ter ícones bonitinhos no terminal. Ele identifica o tipo de arquivo e coloca esse ícone ilustrativo.

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons
```

### z

Tem um intelissense que identifica seu histórico de comandos e cria "atalhos"

```powershell
Install-Module -Name Z -Force
```

### PSReadLine

Autocomplete bacana.

```powershell
Install-Module -Name PSReadLine -AllowPrerelease -Force -SkipPublisherCheck
```
