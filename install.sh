#!/bin/bash

# [-----DEVELOPMENT ENVIRONMENT----]
DOT_FILES="$HOME/.dotfiles"

# [-----DEVELOPMENT TOOLS-----]
echo "INSTALLING DEVELOPMENT TOOLS 🛠"

echo "installing oh_my_zsh"
rm $HOME/.aliases && rm $HOME/.zshrc && rm $HOME/.zshrc.*
rm -rf $HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sf $DOT_FILES/oh-my-zsh/.aliases $HOME/.aliases
ln -sf $DOT_FILES/oh-my-zsh/.zshrc $HOME/.zshrc


echo "installing alacritty"
brew install --cask alacritty
rm -rf $HOME/.config/alacritty && mkdir $HOME/.config/alacritty && ln -sf $DOT_FILES/alacritty/alacritty.yml $HOME/.config/alacritty/


echo "installing z"
brew install z


echo "installing tree"
brew install tree


echo "installing tmux"
brew install tmux
ln -sf $DOT_FILES/tmux/.tmux.conf $HOME/.tmux.conf


echo "installing neovim"
brew install neovim
rm -rf $HOME/.config/nvim && ln -sf $DOT_FILES/nvim $HOME/.config/


echo "installing fzf"
brew install fzf
echo "installing bat: dependency for fzf"
brew install bat
echo "installing the_silver_searcher: dependency for fzf"
brew install the_silver_searcher

echo "installing rectangle"
brew install --cask rectangle

