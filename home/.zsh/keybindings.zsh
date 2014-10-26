# Key Bindings

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Delete]=${terminfo[kdch1]}
bindkey -M viins "${key[Home]}" beginning-of-line
bindkey -M viins "${key[End]}" end-of-line
bindkey -M viins "${key[Delete]}" delete-char
bindkey -M vicmd "${key[Delete]}" delete-char
bindkey -M vicmd "${key[Home]}" beginning-of-line
bindkey -M vicmd "${key[End]}" end-of-line

bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins '^Q' vi-cmd-mode
bindkey -M vicmd 'H' beginning-of-line
bindkey -M vicmd 'L' end-of-line
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^R' redo
#bindkey -M viins '^R' history-incremental-search-backward
#bindkey -M viins '^S' history-incremental-search-forward
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^W' backward-kill-word
# bindkey -M viins '^H' backward-delete-char
bindkey -M viins '^L' delete-char
bindkey -s "[15~]" 'ls -l'

# bindkey "\e[1~" beginning-of-line # Home
# bindkey "\e[4~" end-of-line # End
# bindkey "\e[5~" beginning-of-history # PageUp
# bindkey "\e[6~" end-of-history # PageDown
# bindkey "\e[2~" quoted-insert # Ins
# bindkey "\e[3~" delete-char # Del
# bindkey "\e[5C" forward-word
# bindkey "\eOc" emacs-forward-word
# bindkey "\e[5D" backward-word
# bindkey "\eOd" emacs-backward-word
# bindkey "\e\e[C" forward-word
# bindkey "\e\e[D" backward-word
# bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# bindkey "^[[3^" delete-word # C-Del
# bindkey "^H" backward-delete-word # C-BackSpace

#bindkey '^K' history-substring-search-up
#bindkey '^J' history-substring-search-down
#TODO: This keys conflicts with tmux-vim panel switching

# # for rxvt
# bindkey "\e[7~" beginning-of-line # Home
# bindkey "\e[8~" end-of-line # End
# # for non RH/Debian xterm, can't hurt for RH/Debian xterm
# bindkey "\eOH" beginning-of-line
# bindkey "\eOF" end-of-line
# # for freebsd console
# bindkey "\e[H" beginning-of-line
# bindkey "\e[F" end-of-line

# fasd
# bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (fils and directories)
# bindkey '^X' fasd-complete-f  # C-x to do fasd-complete-f (only files)
# bindkey '^Z' fasd-complete-d  # C-z to do fasd-complete-d (only directories)
