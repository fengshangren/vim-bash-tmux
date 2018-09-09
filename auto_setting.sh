#! /bin/bash

#install something indeed
sudo apt-get update
sudo apt-get install build-essential cmake -y
sudo apt-get install python-dev
sudo apt-get install ctags -y
sudo apt-get install ack-grep -y

sudo apt-get install tmux -y
sudo pip install powerline-status

go get -u github.com/jstemmer/gotags

cd ~/vim-bash-tmux/.vim/bundle/YouCompleteMe/
./install.py --clang-completer
./install.py --go-completer



ln -s ~/vim-bash-tmux/.tmux.conf ~/.tmux.conf
ln -s ~/vim-bash-tmux/.vimrc  ~/.vimrc
ln -s ~/vim-bash-tmux/.vim ~/.vim
ln -s ~/vim-bash-tmux/.tmux ~/.tmux
rm -rf ~/.bashrc
ln -s ~/vim-bash-tmux/.bashrc ~/.bashrc 
