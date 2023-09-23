#!/bin/sh
# Setup packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create symlinks
ln -s $(pwd)/nvim ~/.config
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# Install Neovim plugins
nvim +PackerSync

# TODO Install language servers for elixir, vue, typescript
