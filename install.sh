#!/bin/bash

mkdir -p $HOME/.config/nvim/
cp init.vim $HOME/.config/nvim/
cp .tmux.conf $HOME

wget https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh && . one-dark.sh
chmod +x one-dark.sh
./one-dark.sh

