# Functions

function top10 () {history | awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}' | sort | uniq -c | sort -rn | head -10}

#unalias f
function f() {find ./ -iname "*$1*" 2>/dev/null | grep -i $1}

# F2 to sudo when I forgot
bindkey -s '\e[12~' "sudo !!\n"

# Aliases

alias ..='cd ..'
[ -f /usr/bin/trash ] && alias rm='trash'
alias ll='ls -lah'
alias l='ls -lh'
alias lltime='ll -tr'
alias llsize='l --group-directories-first -S'
alias lld='ls -lhd *(-/DN)'
alias llh='ls -lhd .*'
[ -f /usr/bin/pydf ] && alias df='pydf'
alias du='du -hs'
alias mkdirs='mkdir -p'
alias n='nano'
#alias shutdown='sudo shutdown -Hh now'
#alias reboot='sudo reboot'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias bc='bc -l'
alias psg='ps aux | grep'
alias emacs-restart='pkill emacs; emacs --daemon'
alias g='grep -i'
alias x='dtrx'
alias le='less'
alias diff='colordiff'
alias za='zathura'
alias v='vim --servername vim'
alias view='vim -R -'
alias cpsshkey='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias ff='find |grep'
alias ta='task'
alias impersonatewm='wmname LG3D'
alias pt='ping google.com'

# fasd aliases
alias ee='fasd -ae e'
alias ed='fasd -de e'
alias ef='fasd -fe e'
alias vd='fasd -de vim'
alias vf='fasd -fe vim'

# Load/reload
alias homeshickload='source ~/.homesick/repos/homeshick/homeshick.sh'
alias xresourcesload="xrdb ~/.Xresources"

# Node
alias npm-exec='PATH=$(npm bin):$PATH'

# Latex
alias latexmkcompile="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"

# Django
#alias manage='python $VIRTUAL_ENV/../manage.py'

# GPG
alias gpg-decrypt='gpg --passphrase-fd 0 --decrypt-files *.gpg'
