#!/bin/bash

sudo pacman -S $(cat dep/arch.txt)

kittyDir="~/.config/kitty/"

cp kitty/* ~/.config/kitty/
cp zsh/p10k.zsh ~/.p10k.zsh
cp zsh/zshrc ~/.zshrc

echo "Done!"
echo "To see effects close your terminal and/or run source ~/.zshrc"
