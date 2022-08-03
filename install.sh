#/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim

rm -f ~/.bashrc
ln -s ~/.dotfiles/.bashrc
. ~/.bashrc
