#/bin/sh

rm -f ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
. ~/.bashrc
export PATH=$HOME/.dotfiles/execs:$PATH

rm -f ~/.gitconfig
rm -f ~/.vimrc
sudo rm -f /usr/local/bin/nvim

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
sudo ln -s /usr/bin/nvim /usr/local/bin/
#ln -s ~/.dotfiles/execs/exa ~/.local/bin/

if ! [[ -d $HOME/.config/nvim ]];
then
    mkdir -p $HOME/.config/nvim
fi
if ! [[ -f $HOME/.config/nvim/init.vim ]];
then
    ln -s ~/.dotfiles/.vimrc ~/.config/nvim/init.vim
fi

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
sudo apt -y upgrade
