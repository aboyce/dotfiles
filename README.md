# dotfiles

## Linux Software

```bash
# AI - Anthropic
npm install -g @anthropic-ai/claude-code

# AI - OpenAI
npm install -g @openai/codex

# Mobile - Expo
npm install -g eas-cli
eas login

# Update All
npm ls -g
npm update -g
```

### Bash Terminal

```
parse_git_current_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]' -e 's/* \(.*\)/(\1)'
}

parse_git_default_branch() {
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
git remote show origin |
grep 'HEAD branch' | 
sed -n 's/^ *HEAD branch: *\(.*\)$/(\1)/p'
}

PS1="[ADM] \[\e[32m\]\w \[\e[38;5;250m\]\[\e[38;5;245m\]\$(parse_git_default_branch)\[\e[38;5;250m\] \$()parse_git_current_branch)\[\e\00m\]\n->"
```

## Windows Software

### Chocolatey / Winget

[winget](https://winget.run/)
[chocolatey](https://community.chocolatey.org/packages)

```bash
# Everyday
winget install -e --id Brave.Brave # choco install brave
winget install -e --id Spotify.Spotify # choco install spotify
winget install -e --id WhatsApp.WhatsApp
winget install -e --id OpenWhisperSystems.Signal # choco install signal
winget install -e --id Obsidian.Obsidian

# Windows Utils
winget install -e --id AntibodySoftware.WizTree # choco install wiztree
winget install -e --id Mythicsoft.AgentRansack
winget install -e --id Microsoft.PowerToys # choco install powertoys
winget install -e --id Logitech.OptionsPlus # choco install logioptionsplus
winget install -e --id Oracle.VirtualBox # choco install virtualbox
winget install "Windows App" -s msstore
winget install -e --id Malwarebytes.Malwarebytes
winget install -e --id Google.Drive

# Development
winget install -e --id Mobatek.MobaXterm # choco install mobaxterm

winget install -e --id Microsoft.VisualStudioCode # choco install vscode --params "/NoDesktopIcon /NoQuicklaunchIcon"

# winget install -e --id Git.Git # choco install git
# winget install -e --id OpenJS.NodeJS.LTS # choco install nodejs-lts

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
wsl --install

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
