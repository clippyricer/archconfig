#!/bin/bash

sudo pacman -S $(cat dep/arch.txt)

kittyDir="~/.config/kitty/"

cp kitty/* ~/.config/kitty/
cp zsh/p10k.zsh ~/.p10k.zsh
cp zsh/zshrc ~/.zshrc
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
unzip JetBrainsMono.tar.xz && mkdir /usr/share/fonts/JetBrainsMono/
mv *.ttf /usr/share/fonts/JetBrainsMono/
rm README.md && rm OFL.txt
fc-cache -frv && rm JetBrainsMono.tar.xz

echo "Done!"
echo "To see effects close your terminal and open up kitty to see the effects"
