#!/bin/bash


#initializing the nvim configuraton directory 
sudo rm -r ~/.local/share/nvim/
rm -r ~/.config/nvim
echo REMOVED PREVIOUS NEOVIM CONFIGURATION
mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/colors
cp config_files/gruvbox.vim ~/.config/nvim/colors/
mkdir ~/.config/nvim/after/
mkdir ~/.config/nvim/after/plugin
mkdir ~/.config/nvim/lua/plugins

cp config_files/packer.lua ~/.config/nvim/lua/plugins/

#installing package manager
./individual_scripts/packer.sh

#dependencies 
echo "CHECKING FOR DEPENDENCIES"
./individual_scripts/ripgrep.sh
./individual_scripts/g++.sh

#Installing plugins
echo "INSTALLING NVIM PLUGINS (HEADLESS MODE)"
nvim --headless -c "luafile ~/.config/nvim/lua/plugins/packer.lua" -c "PackerSync" -c "autocmd User PackerComplete quitall"
cp config_files/init.lua ~/.config/nvim/

#copying NVIM configuration files
cp config_files/remaps.lua ~/.config/nvim/lua/plugins/
cp config_files/colors.lua ~/.config/nvim/lua/plugins/
cp config_files/treesitter.lua ~/.config/nvim/lua/plugins/

#copying all plugin after-configuration files
cp config_files/after/* ~/.config/nvim/after/plugin/

#additional plugin files
cp config_files/plugins/init.lua ~/.config/nvim/lua/plugins/init.lua
