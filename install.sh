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
mkdir $DOT_FILES/oh-my-zsh/themes
git clone https://github.com/dracula/zsh.git $DOT_FILES/oh-my-zsh/themes/dracula
ln -s $DOT_FILES/oh-my-zsh/themes/dracula/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme


echo "installing alacritty"
brew install --cask alacritty
rm -rf $HOME/.config/alacritty && mkdir $HOME/.config/alacritty && ln -sf $DOT_FILES/alacritty/alacritty.yml $HOME/.config/alacritty/
# install themes managements for alacritty
npm i -g alacritty-themes

echo "installing glow: markdow rendering on terminal"
brew install glow
echo "let config glow"
echo "# style name or JSON path (default "auto")
style: "light"
# show local files only; no network (TUI-mode only)
local: true
# mouse support (TUI-mode only)
mouse: true
# use pager to display markdown
pager: true
# word-wrap at width
width: 80" > $HOME/Library/Preferences/glow/glow.yml

echo "installing z"
brew install z


echo "installing tree"
brew install tree


echo "installing tmux"
brew install tmux
ln -sf $DOT_FILES/tmux/.tmux.conf $HOME/.tmux.conf
tmux source-file $HOME/.tmux.con


echo "installing neovim"
brew install neovim
rm -rf $HOME/.config/nvim && ln -sf $DOT_FILES/nvim $HOME/.config/
# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo "installing fzf"
brew install fzf
echo "installing bat: dependency for fzf"
brew install bat
echo "installing the_silver_searcher: dependency for fzf"
brew install the_silver_searcher

echo "installing rectangle"
brew install --cask rectangle

