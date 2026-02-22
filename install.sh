#!/bin/bash

sudo pacman -S $(cat dep/arch.txt)

kittyDir="~/.config/kitty/"

git clone https://github.com/clippyricer/vimconfig.git $HOME/.vim
rm -rf $HOME/.vimrc
echo 'source ~/.vim/vimrc' >> $HOME/.vimrc
cp kitty/* $HOME/.config/kitty/
cp zsh/p10k.zsh $HOME/.p10k.zsh
cp zsh/zshrc $HOME/.zshrc
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
tar -xvf JetBrainsMono.tar.xz && sudo mkdir /usr/share/fonts/JetBrainsMono/
sudo mv *.ttf /usr/share/fonts/JetBrainsMono/
rm *.md && rm *.txt
fc-cache -frv && rm JetBrainsMono.tar.xz
git reset --hard HEAD
cd $HOME && git clone https://github.com/romkatv/powerlevel10k.git

echo "Done!"
echo "To see effects close your terminal and open up kitty to see the effects"
