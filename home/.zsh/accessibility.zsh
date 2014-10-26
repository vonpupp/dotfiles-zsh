
# To enable fasd
eval "$(fasd --init auto)"

# fasd
# bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (fils and directories)
# bindkey '^X' fasd-complete-f  # C-x to do fasd-complete-f (only files)
# bindkey '^Z' fasd-complete-d  # C-z to do fasd-complete-d (only directories)

# fzf

# C-S: cd to a directory from the current subtree
fzf-cd-subtree-widget() {
  cd "${$(find * -path '*/\.*' -prune \
      -o -type d -print 2> /dev/null | fzf):-.}"
  zle reset-prompt
}
zle     -N   fzf-cd-subtree-widget
bindkey '^S' fzf-cd-subtree-widget

# C-H: cd to a directory from home
fzf-cd-home-widget() {
  cd "${$(find ~/* -path '*/\.*' -prune \
      -o -type d -print 2> /dev/null | fzf):-.}"
  zle reset-prompt
}
zle     -N   fzf-cd-home-widget
bindkey '^H' fzf-cd-home-widget

# C-O: open a file in vim from the current subtree
fzf-vim-subtree-widget() {
  FILE=$(find * -path '*/\.*' -prune -o -type f -print 2> /dev/null | fzf)
  if [ -n "$FILE" ]; then
    echo "$FILE" | xargs bash -c '</dev/tty vim "$@"' ignoreme
  fi
  zle reset-prompt
}
zle     -N   fzf-vim-subtree-widget
bindkey '^O' fzf-vim-subtree-widget

# C-P: open a file in vim from fasd
fzf-vim-home-widget() {
  FILE=$(fasd -f -l | fzf --no-sort)
  if [ -n "$FILE" ]; then
    echo "$FILE" | xargs bash -c '</dev/tty vim "$@"' ignoreme
  fi
  zle reset-prompt
}
zle     -N   fzf-vim-home-widget
bindkey '^P' fzf-vim-home-widget

# C-A: insert a path from the current subtree
fzf-file-widget() {
  local FILES
  local IFS="
"
  FILES=($(
    find * -path '*/\.*' -prune \
    -o -type f -print \
    -o -type l -print 2> /dev/null | fzf -m))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-file-widget
bindkey '^A' fzf-file-widget

# C-Y: insert a path from home
fzf-file-home-widget() {
  local FILES
  local IFS="
"
  FILES=($(
    find ~/* -path '*/\.*' -prune \
    -o -type f -print \
    -o -type l -print 2> /dev/null | fzf -m))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-file-home-widget
bindkey '^Y' fzf-file-home-widget

# C-X: insert a path from fasd
fzf-fasd-insert-widget() {
  local FILES
  local IFS="
"
  FILES=($(fasd -l | fzf -m --no-sort))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-fasd-insert-widget
bindkey '^X' fzf-fasd-insert-widget

# C-Z: cd to a directory from fasd
fzf-fasd-cd-widget() {
  cd "$(fasd -l | fzf --no-sort)"
  zle reset-prompt
}
zle     -N   fzf-fasd-cd-widget
bindkey '^Z' fzf-fasd-cd-widget

# C-R: history search
fzf-history-widget() {
  LBUFFER=$(history | fzf +s | sed "s/ *[0-9]* *//")
  zle redisplay
}
zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget

# vimf - Open selected file in Vim
# vf() {
#   FILE=$(fzf) && vim "$FILE"
# }

source ~/.fzf.zsh
