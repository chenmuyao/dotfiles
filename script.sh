#!/bin/bash

sudo apt install zsh tmux xsel xclip

git clone https://github.com/gpakosz/.tmux.git $HOME
ln -s -f .tmux/.tmux.conf -t $HOME
cp ./.tmux.conf.local $HOME

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
