#!/bin/zsh

# pre-reqs
if [[ -d ~/.config ]]
then
  echo "Pre-Reqs: .config folder already existed"
else
  mkdir ~/.config
  echo "Pre-Reqs: .config folder did not exist, created"
fi

# brew
if [[ -f ~/Brewfile ]]
then
  echo "Brew: Removed existing link"
  rm ~/Brewfile
else
  echo "Brew: Had not been linked before"
fi
ln -sf "$(pwd)/brew/Brewfile" ~/Brewfile
echo "Brew: Linked up configuration"

if [[ -f ~/Brewfile.work ]]
then
  echo "Brew: Removed existing link to work file"
  rm ~/Brewfile.work
else
  echo "Brew: Work file had not been linked before"
fi
ln -sf "$(pwd)/brew/Brewfile.work" ~/Brewfile.work
echo "Brew: Linked up configuration work configuration"

if [[ -f ~/Brewfile.personal ]]
then
  echo "Brew: Removed existing link to personal file"
  rm ~/Brewfile.personal
else
  echo "Brew: Personal file had not been linked before"
fi
ln -sf "$(pwd)/brew/Brewfile.personal" ~/Brewfile.personal
echo "Brew: Linked up configuration personal configuration"

# tmux
if [[ -d ~/.config/tmux ]]
then
  echo "Tmux: Removed existing link"
  rm -f ~/.config/tmux
else
  echo "Tmux: Had not been linked before"
fi
ln -sf "$(pwd)/tmux/" ~/.config/
echo "Tmux: Linked up configuration"

# vim
# if [[ -d ~/.vim ]]
# then
#   echo "Vim: Removed existing link"
#   rm -f ~/.vim
# else
#   echo "Vim: Had not been linked before"
# fi
# ln -sf "$(pwd)/vim/.vim" ~/
# echo "Vim: Linked up configuration"

# nvim
if [[ -d ~/.config/nvim ]]
then
  echo "Nvim: Removed existing link"
  rm -f ~/.config/nvim
else
  echo "Nvim: Had not been linked before"
fi
ln -sf "$(pwd)/nvim" ~/.config/
echo "Nvim: Linked up configuration"

# zsh
if [[ -f ~/.zshrc ]]
then
  echo "Zsh: Removed existing link"
  rm ~/.zshrc
else
  echo "Zsh: Had not been linked before"
fi
ln -sf "$(pwd)/zsh/.zshrc" ~/.zshrc
echo "Zsh: Linked up configuration"

# oh-my-zsh themes
if [[ -f ~/.oh-my-zsh/themes/aboyce.zsh-theme ]]
then
  echo "Zsh Theme: Removed existing link"
  rm ~/.oh-my-zsh/themes/aboyce.zsh-theme
else
  echo "Zsh Theme: Had not been linked before"
fi

ln -sf "$(pwd)/zsh/themes/aboyce.zsh-theme" ~/.oh-my-zsh/themes/aboyce.zsh-theme
echo "Zsh Theme: Linked up themes"
