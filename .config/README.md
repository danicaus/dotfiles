# Configurações do Powershell - Passo a passo

Muito baseado no que aprendi [nesse video](https://www.youtube.com/watch?v=5-aK2_WwrmM).

[Artigo com umas explicações](https://dev.to/dannyviiprus/improve-window-powershell-promt-with-oh-my-posh-and-more-20md)

# Nerd fonts

É importante ter uma fonte compatível com ícones no Powershell. Eu curti bastante a 'Cartograph CF' e a 'JetBrains Mono'.

[Download no Github](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono) - JetBrains Mono

# Windows Terminal e PowerShell ^7.0

[Microsoft Store - Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)

[Microsoft Store - Powershell](https://apps.microsoft.com/store/detail/powershell/9MZ1SNWT0N5D?hl=pt-br&gl=BR)

## Configurando

No windows Terminal, abrir o arquivo de configuração em JSON, alterar o profile default como abaixo, e adicionar o scheme 'One half dark (moded)' na lista:

```JSON
profiles": 
    {
        "defaults": 
        {
            "colorScheme": "Vintage",
            "cursorShape": "filledBox",
            "font": 
            {
                "face": "JetBrainsMonoMedium Nerd Font Mono"
            },
            "intenseTextStyle": "bold",
            "opacity": 70,
            "startingDirectory": "C:\\",
            "useAcrylic": true
        },
        [...]
    }
"schemes":
    [
      {
            "background": "#001B26",
            "black": "#282C34",
            "blue": "#61AFEF",
            "brightBlack": "#5A6374",
            "brightBlue": "#61AFEF",
            "brightCyan": "#56B6C2",
            "brightGreen": "#98C379",
            "brightPurple": "#C678DD",
            "brightRed": "#E06C75",
            "brightWhite": "#DCDFE4",
            "brightYellow": "#E5C07B",
            "cursorColor": "#FFFFFF",
            "cyan": "#56B6C2",
            "foreground": "#DCDFE4",
            "green": "#98C379",
            "name": "One Half Dark (modded)",
            "purple": "#C678DD",
            "red": "#E06C75",
            "selectionBackground": "#FFFFFF",
            "white": "#DCDFE4",
            "yellow": "#E5C07B"
        },
        [...]
    ],
"theme": "dark",
"useAcrylicInTabRow": true
```

No Windows Terminal, selecionar o "Color Scheme" 'One Half Dark (modded)', adicionado nesse arquivo JSON acima.

# Scoop

Esse é basicamente um instalador de programas, para que isso seja possível a partir da linha de comando.

[Site](https://scoop.sh/)

`irm get.scoop.sh | iex`

Adicionar o diretório `C:\Users\<USERNAME>\scoop\shims` (substituindo o `<USERNAME>` pelo meu username na máquina) como um novo diretório dentre as variáveis ambiente da máquina dentro de Path.

# Curl, Sudo e jq

`scoop install curl sudo jq`

# Neovim

`scoop install neovim`

# Oh My Posh

Programa para configuração do terminal. Deixa ele mais bonitinho, colocando temas.

[Site](https://ohmyposh.dev/)

`Install-Module oh-my-posh`

# Posh git

Programa para autocomplete no git.

[Site](https://github.com/dahlbyk/posh-git)

`Import-Module posh-git`

# Terminal Icons

Para ter ícones bonitinhos no terminal. Ele identifica o tipo de arquivo e coloca esse ícone ilustrativo.

`Import-Module -Name Terminal-Icons -Repository PSGallery -Force`
`Import-Module Terminal-Icons`

# z

Tem um intelissense que identifica seu histórico de comandos e cria "atalhos"

`Import-Module -Name z -Force`

# PSReadLine

Autocomplete bacana.

`Import-Module -Name PSReadLine -AllowPrerelease -Force -SkipPublisherCheck`
