#!/bin/bash

sudo apt install zsh tmux xsel xclip nvim git 
# sudo apt install cscope ctags

git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
ln -s -f $HOME/.tmux/.tmux.conf -t $HOME
ln -s -f ./.tmux.conf.local $HOME

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s -f ./.zshrc $HOME
