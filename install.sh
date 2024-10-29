#!/bin/bash

#initializing the nvim configuraton directory 
sudo rm -r ~/.local/share/nvim/
rm -r ~/.config/nvim
echo REMOVED PREVIOUS NEOVIM CONFIGURATION
mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/after
mkdir ~/.config/nvim/lua/plugins

#devicons config
cp config_files/devicons.lua ~/.config/nvim/lua/plugins/

#copying remaps.lua
cp config_files/remaps.lua ~/.config/nvim/lua/plugins

cp config_files/init.lua ~/.config/nvim/
cp config_files/plugins/init.lua ~/.config/nvim/lua/plugins/init.lua

#installing package manager
./individual_scripts/packer.sh
cp config_files/packer.lua ~/.config/nvim/lua/plugins

#Installing plugins
nvim -c "luafile ~/.config/nvim/lua/plugins/packer.lua" -c "PackerSync" -c "autocmd User PackerComplete quitall"
