#!/bin/sh
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME

# PIP
source ~/.venv/bin2/bin/activate
pip install \
    trash \
    envdir \
    virtualenvwrapper \
    #autoenv \
    #

# Autoenv
git clone https://github.com/kennethreitz/autoenv.git ~/.autoenv

# FZF
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# BASE16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# OH-MY-ZSH
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mv ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.zsh ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.old.zsh
mv ~/.oh-my-zsh/plugins/archlinux/archlinux.plugin.zsh ~/.oh-my-zsh/plugins/archlinux/archlinux.plugin.old.zsh
#ln -s ~/repos/dotfiles/.oh-my-zsh.custom/plugins/taskwarrior/taskwarrior.plugin.zsh ~/.oh-my-zsh/plugins/taskwarrior/taskwarrior.plugin.zsh
#ln -s ~/.homesick/repos/dotfiles-zsh/home/.oh-my-zsh.custom/plugins/archlinux/archlinux.plugin.zsh ~/.oh-my-zsh/plugins/archlinux/archlinux.plugin.zsh
#ln -s ~/repos/dotfiles/home/.oh-my-zsh.custom/themes/vonpupp.zsh-theme ~/.oh-my-zsh/themes/vonpupp.zsh-theme

chsh -s $(which zsh)
