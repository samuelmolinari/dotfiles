#! /bin/bash

brew install neovim fzf

mkdir -p $HOME/.local/share

nvim +PlugInstall +qall

ln -s $HOME/.dotfiles/.zshrc $HOME
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/._gitignore $HOME/.gitignore
ln -s $HOME/.dotfiles/.oh-my-zsh $HOME
ln -s $HOME/.dotfiles/.zprofile $HOME
ln -s $HOME/.dotfiles/.tmux.conf $HOME
ln -s $HOME/.dotfiles/.config $HOME
ln -s $HOME/.dotfiles/.local/share/nvim $HOME/.local/share
ln -s $HOME/.dotfiles/.fzf.zsh $HOME
