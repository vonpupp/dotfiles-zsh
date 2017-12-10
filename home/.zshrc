# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="vonpupp"
#ZSH_THEME="mh"
ZSH_THEME="bureau"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)
plugins=(archlinux docker python pip django)
#plugins=(vi-mode git suse history-substring-search svn virtualenvwrapper)
#plugins=(vi-mode git suse history-substring-search svn)
#plugins=(vi-mode git suse history-substring-search)
#plugins=(vi-mode suse history taskwarrior screen lol docker vagrant git python pip django ruby gem golang)
#plugins=(taskwarrior)

source $ZSH/oh-my-zsh.sh

source ~/.zshenv
source ~/.zsh/aliases.zsh
source ~/.zsh/aliases-os.zsh
[ -f /usr/bin/fasd ] && source ~/.zsh/accessibility.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/keybindings.zsh
source ~/.zsh/options.zsh
source ~/.zsh/variables.zsh
source ~/.zsh/autorun.zsh

#source $HOME/.zsh-fuzzy-match/fuzzy-match.zsh

# pipenv
#[ -f $HOME/.zsh/pipenv.sh ] && source $HOME/.zsh/pipenv.sh

# pyenv
#[ -f $HOME/.zsh/pyenv.sh ] && source $HOME/.zsh/pyenv.sh

# autoenv
[ -f $HOME/.autoenv/.activate.sh ] && source $HOME/.autoenv/activate.sh

# travis
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# asdf
[ -f $HOME/.asdf/asdf.sh ] && source $HOME/.asdf/asdf.sh

# keychain
[ -f $HOME/.zsh/keychain.sh ] && source $HOME/.zsh/keychain.sh

# azure
[ -f $HOME/.zsh/azure.sh ] && source $HOME/.zsh/azure.sh
