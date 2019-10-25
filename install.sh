#!/bin/bash

brew update

echo "⚙️  Install ag"
brew install ag

echo "⚙️  Install fzf"
brew install fzf nvim
/usr/local/opt/fzf/install

echo "⚙️  Install nvim"
brew install nvim

echo "📝 Copy nvim"
mkdir -p $HOME/.config
rm -rf $HOME/.config/nvim
ln -s `pwd`/.config/nvim $HOME/.config/nvim

mkdir -p $HOME/.local/share
rm -rf $HOME/.local/share/nvim
ln -s `pwd`/.local/share/nvim $HOME/.local/share/nvim

echo "⚙️  Install nvim plugs"
vim +PlugInstall +qall

echo "📝 Copy gitconfig"
rm $HOME/.gitconfig
ln -s `pwd`/.gitconfig $HOME/.gitconfig

echo "📝 Copy gitignore"
rm $HOME/.gitignore
ln -s `pwd`/.global_gitignore $HOME/.gitignore

echo "📝 Copy tmux.conf"
rm $HOME/.tmux.conf
ln -s `pwd`/.tmux.conf $HOME/.tmux.conf

echo "📝 Copy zshrc"
rm $HOME/.zshrc
ln -s `pwd`/.zshrc $HOME/.zshrc

echo "✅ Done!"
