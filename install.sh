#!/bin/bash


#initializing the nvim configuraton directory 
sudo rm -r ~/.local/share/nvim/
rm -r ~/.config/nvim
echo REMOVED PREVIOUS NEOVIM CONFIGURATION
mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/after
mkdir ~/.config/nvim/lua/plugins

cp config_files/packer.lua ~/.config/nvim/lua/plugins

#installing package manager
./individual_scripts/packer.sh

#dependencies 
echo "CHECKING FOR DEPENDENCIES"
./individual_scripts/ripgrep.sh

#Installing plugins
echo "INSTALLING NVIM PLUGINS (HEADLESS MODE)"
nvim --headless -c "luafile ~/.config/nvim/lua/plugins/packer.lua" -c "PackerSync" -c "autocmd User PackerComplete quitall"
cp config_files/init.lua ~/.config/nvim/

#copying remaps.lua
cp config_files/remaps.lua ~/.config/nvim/lua/plugins

#copying telescope configuration file
cp config_files/telescope.lua ~/.config/nvim/lua/plugins/

#additional plugin files

cp config_files/plugins/init.lua ~/.config/nvim/lua/plugins/init.lua
