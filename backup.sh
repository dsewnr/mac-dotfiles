#!/bin/sh

dotfiles=(
~/.tmux.conf
~/.alacritty.yml
~/.config/fish/config.fish
~/.config/nvim/init.vim
~/.config/nvim/coc-settings.json
)

for ((i=0; i<${#dotfiles[@]}; i++)); do
	cp ${dotfiles[i]} .
done
