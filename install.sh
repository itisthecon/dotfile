#/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
sudo apt -y ugrade

rm -f ~/.bashrc
rm -f ~/.gitconfig

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
sudo ln -s /usr/bin/nvim /usr/local/bin/
#ln -s ~/.dotfiles/execs/exa ~/.local/bin/

. ~/.bashrc

export PATH=$HOME/.dotfiles/execs:$PATH
