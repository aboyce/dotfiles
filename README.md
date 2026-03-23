# dotfiles

## Windows

### Windows Store

- ChatGPT
- Windows App

### Chocolatey / Winget

[winget](https://winget.run/)

```bash
# Keep chocolately up to date
choco upgrade chocolatey

# Install - Everyday
winget install -e --id Brave.Brave # choco install brave
winget install -e --id Spotify.Spotify # choco install spotify
winget install -e --id WhatsApp.WhatsApp
winget install -e --id OpenWhisperSystems.Signal # choco install signal

# Install - Windows Utils
winget install -e --id AntibodySoftware.WizTree # choco install wiztree
winget install -e --id Mythicsoft.AgentRansack
winget install -e --id Microsoft.PowerToys # choco install powertoys
winget install -e --id Logitech.OptionsPlus # choco install logioptionsplus
winget install -e --id Oracle.VirtualBox # choco install virtualbox
winget install "Windows App" -s msstore
winget install -e --id Malwarebytes.Malwarebytes
winget install -e --id Google.Drive

# Install - Development
wsl --install

winget install -e --id Git.Git # choco install git
winget install -e --id Mobatek.MobaXterm # choco install mobaxterm
winget install -e --id OpenJS.NodeJS.LTS # choco install nodejs-lts

winget install -e --id Microsoft.VisualStudioCode # choco install vscode --params "/NoDesktopIcon /NoQuicklaunchIcon"

# AI - Anthropic
winget install -e --id Anthropic.Claude

# AI - OpenAI
winget install ChatGPT -s msstore
winget install Codex -s msstore

# Install - Photography
winget install -e --id GIMP.GIMP # choco install gimp

winget install -e --id FastStone.Viewer # choco install faststone-image-viewer

# Update all
choco upgrade all
winget upgrade --all
```

### WSL

On Windows

```bash
wsl --update
wsl --list --online
wsl --install FedoraLinux-**

```

## Installation - Legacy

How to install:

```bash
# ensure you are executing from this repository
./install.sh
```
