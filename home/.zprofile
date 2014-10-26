[ ! -s ~/.mpd/pid ] && mpd ~/.mpd/.mpd.conf

# Fixing caret at the end of line instead of the begining (stupid Debian policy)
unsetopt global_rcs
