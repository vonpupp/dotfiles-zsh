#export LESS="-R"
#export M2_HOME=/opt/maven
export XDG_CONFIG_HOME="$HOME/.config"
export M2_HOME=/usr
export M2=$M2_HOME/bin
export RUBY_HOME=~/.gem/ruby/2.1.0/bin
#export PATH=~/bin/sumo:/usr/share/perl5/vendor_perl/auto/share/dist/Cope:~/bin:$PATH:$M2:~/.cabal/bin
#export PATH="/usr/lib64/mpi/gcc/openmpi/bin:/home/afu/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/X11R6/bin:/usr/games"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.linuxbrew/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/bin:$PATH"
PATH="/bin:$PATH"
PATH="/usr/bin/X11:$PATH"
PATH="/usr/X11R6/bin:$PATH"
PATH="/usr/games:$PATH"
PATH="/usr/bin/pkg-config:$PATH"
PATH="$M2:$PATH"
PATH="$RUBY_HOME:$PATH"
#export PYMACS_PYTHON=python2
#source /etc/profile.d/apache-ant.sh
export LD_LIBRARY_PATH="~/.linuxbrew/lib:$LD_LIBRARY_PATH"

#PATH=$HOME/.gem/ruby/2.1.0/bin:$PATH
#PATH=$HOME/.cabal/bin:$PATH

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/repos
VIRTUALENV_DIR=`which virtualenvwrapper.sh`
source $VIRTUALENV_DIR

# Fixes java/xmonad issue with JOSM
#export _JAVA_AWT_WM_NONREPARENTING=1

export USP=~/Dropbox/mnt-usp/
export dissertation=~/Dropbox/MAC5910-Albert/dissertation
export dotfiles=~/repos/dotfiles/home
export dotfilesconfig=~/repos/dotfiles/home/.config
export PATH=$PATH
