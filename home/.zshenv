# Ant
#source /etc/profile.d/apache-ant.sh

# Bin
PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/bin:$PATH"
PATH="/usr/bin/X11:$PATH"
PATH="/usr/X11R6/bin:$PATH"
PATH="/usr/games:$PATH"
PATH="/usr/bin/pkg-config:$PATH"

# Haskell
#PATH=$HOME/.cabal/bin:$PATH

# Linuxbrew
PATH="$HOME/.linuxbrew/bin:$PATH"
export LD_LIBRARY_PATH="~/.linuxbrew/lib:$LD_LIBRARY_PATH"

# Maven
export M2_HOME=/usr
export M2=$M2_HOME/bin
PATH="$M2:$PATH"
#export M2_HOME=/opt/maven

# Perl
PATH="$HOME/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5 \""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

# Python
# This might raise some issues using python2 and python3
# Needs better testing on arch
# Autoenv
#source /usr/share/autoenv-git/activate.sh
source $HOME/.autoenv/activate.sh
export VENV_BIN2=~/.venv/bin2/bin
PATH="$VENV_BIN2:$PATH"
PATH="$VENV_BIN3:$PATH"
export VENV_BIN3=~/.venv/bin3/bin
export WORKON_HOME=$HOME/.virtualenvs
#export WORKON_HOME=$HOME/.virtualenvs
#VIRTUALENVWRAPPER_PYTHON=/home/afu/.venv/bin2/bin/python
#VIRTUALENV_DIR=`which virtualenvwrapper.sh`
#source $VIRTUALENV_DIR

# Anaconda
#PATH="$HOME/anaconda/bin:$PATH"
#VIRTUALENVWRAPPER_PYTHON=/home/afu/anaconda/bin/python

# NODE
PATH=$(npm bin):$PATH

# R
export R_LIBS="$HOME/Rlibs"
PATH="$R_LIBS:$PATH"

# Ruby
export RUBY_HOME="`ruby -e 'print Gem.user_dir'`/bin"
PATH="$RUBY_HOME:$PATH"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"

# Load $PATH
export PATH=$PATH

# User aliases
export PROJECTS=$HOME/projects
export USP=~/Dropbox/mnt-usp/
export dissertation=~/Dropbox/MAC5910-Albert/dissertation
