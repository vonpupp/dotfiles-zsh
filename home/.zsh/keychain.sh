### START-Keychain ###
# Let  re-use ssh-agent and/or gpg-agent between logins
[ -f /usr/bin/keychain ] && eval `keychain --eval --agents ssh id_rsa`
#source $HOME/.keychain/`hostname`-sh
### End-Keychain ###
