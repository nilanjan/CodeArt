#!/usr/bin/bash

mv ~/.config/nvim/lua/user_settings.lua ~/.config/
svn export --force https://github.com/nilanjan/CodeArt.git/trunk/configs/ ~/.config/nvim
mv -f ~/.config/user_settings.lua ~/.config/nvim/lua/user_settings.lua
