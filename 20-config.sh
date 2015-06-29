#!/bin/sh

chsh -s $(which zsh)

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mv ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.zsh ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.old.zsh
#ln -s ~/repos/dotfiles/.oh-my-zsh.custom/plugins/taskwarrior/taskwarrior.plugin.zsh ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.zsh
#ln -s ~/repos/dotfiles/home/.oh-my-zsh.custom/themes/vonpupp.zsh-theme ~/.oh-my-zsh/themes/vonpupp.zsh-theme
