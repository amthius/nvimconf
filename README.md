# Personal neovim config
# Dependencies
`ripgrep` may be the only dependency listed here and needed for something like [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
```
https://github.com/BurntSushi/ripgrep
https://www.nerdfonts.com/font-downloads
```
# Installation
## Windows (Powershell)
```ps1
git clone https://github.com/dann0001/nvimconf "$env:LOCALAPPDATA\nvim";Remove-Item -Path "$env:LOCALAPPDATA\nvim\README.md";Remove-Item -Recurse -Force "$env:LOCALAPPDATA\nvim\.git"
```
