#!/bin/sh

dotfiles=(
~/.tmux.conf
~/.config/fish/config.fish
~/.config/nvim/init.vim
)

for ((i=0; i<${#dotfiles[@]}; i++)); do
	cp ${dotfiles[i]} .
done
