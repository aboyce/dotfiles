# dotfiles

## Linux Software

```bash
# AI - Anthropic - CLI
npm install -g @anthropic-ai/claude-code

# AI - OpenAI
brew install codex

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

### Winget

[winget](https://winget.run/)

```bash
# Everyday
winget install -e --id Brave.Brave
winget install -e --id Google.Chrome
winget install -e --id Spotify.Spotify
winget install WhatsApp -s msstore
winget install -e --id OpenWhisperSystems.Signal
winget install -e --id Obsidian.Obsidian

# Windows Utils
winget install -e --id AntibodySoftware.WizTree
winget install -e --id Mythicsoft.AgentRansack
winget install -e --id Microsoft.PowerToys
winget install -e --id Logitech.OptionsPlus
winget install -e --id Oracle.VirtualBox
winget install "Windows App" -s msstore
winget install -e --id Google.Drive
winget install -e --id RaspberryPiFoundation.RaspberryPiImager

# Development
winget install -e --id Mobatek.MobaXterm
winget install -e --id Microsoft.VisualStudioCode

# AI - Anthropic
winget install -e --id Anthropic.Claude

# AI - OpenAI
winget install ChatGPT -s msstore
winget install Codex -s msstore

# Photography
winget install -e --id GIMP.GIMP
winget install -e --id FastStone.Viewer

# 3D Printing
winget install -e --id Ultimaker.Cura
winget install -e --id SoftFever.OrcaSlicer

# Update all
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
