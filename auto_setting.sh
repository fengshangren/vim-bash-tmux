#! /bin/bash

#install something indeed
apt-get update
go get -u github.com/jstemmer/gotags
sudo apt-get install ctags -y
sudo apt-get install ack-grep -y
sudo apt-get install tmux -y
sudo apt-get install build-essential cmake -y

cd ~/vim-bash-tmux/.vim/bundle/YouCompleteMe/
./install.py --clang-completer
./install.py --go-completer



ln -s ~/vim-bash-tmux/.tmux.conf ~/.tmux.conf
ln -s ~/vim-bash-tmux/.vimrc  ~/.vimrc
ln -s ~/vim-bash-tmux/.vimrc  ~/.vimrc
ln -s ~/vim-bash-tmux/.tmux ~/.tmux
rm -rf ~/.bashrc
ln -s ~/vim-bash-tmux/.bashrc ~/.bashrc 
