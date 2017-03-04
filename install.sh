#!/bin/bash

set -e

# Update apt cache
sudo aptitude update

# Install Zsh, Git, Vim and tmux
sudo aptitude -y install --without-recommends zsh git vim tmux

# Install oh-my-zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
  cd "$HOME/.oh-my-zsh"
  git pull
  cd -
fi

# Set zsh as the default shell
chsh -s $(which zsh)

# Link Zsh, Git, Vim and tmux configurations
files=(".zshrc" ".gitconfig" ".vim" ".vimrc" ".tmux.conf" ".bin")
for file in "${files[@]}"; do
  if [[ -f "$HOME/$file" || -d "$HOME/$file" ]]; then
    if [ "$1" = "-f" ]; then
      rm "$HOME/$file"
    else
      mv "$HOME/$file" "$HOME/$file.old"
    fi
  fi
  ln -s "$(pwd)/$file" "$HOME/$file"
done;

# Install Vim plugins with Vundle
git submodule init
git submodule update
echo | vim +BundleInstall +qall 2> /dev/null
