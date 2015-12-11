# pacman aliases
alias pac='powerpill -S'        # install
alias pacu='powerpill -Syu'    	# update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='pacman -Rs'         # remove
alias pacs='pacman -Ss'         # search
alias paci='pacman -Si'         # info
alias paclo='pacman -Qdt'       # list orphans
alias pacro='paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias paclf='pacman -Ql'        # list files
alias pacc='paccache -r'        # clean
alias paclean='pacman -Scc'    	# clean cache
