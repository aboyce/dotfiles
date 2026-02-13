# dotfiles

## Windows

### Windows Store

- ChatGPT
- Windows App

### Chocolatey

```bash

# Keep chocolately up to date
choco upgrade chocolatey

# Install - Everyday
choco install brave
choco install spotify
choco install signal

# Install - Windows Utils
choco install wiztree
choco install powertoys
choco install logioptionsplus
choco install virtualbox

# Install - Development
choco install wsl2
choco install git
choco install mobaxterm
choco install nodejs-lts
choco install vscode --params "/NoDesktopIcon /NoQuicklaunchIcon"

# Install - Photography
choco install gimp
choco install faststone-image-viewer

# Update all
choco upgrade all
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
