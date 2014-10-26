################################################################################
# Author: Albert De La Fuente Vigliotti <vonpupp [at] gmail.com>
# Based on Daniel Dvorkin hack
# Original file by: Pete Clark
# License: WTFPL<http://www.wtfpl.net/>
#
# This oh-my-zsh plugin adds smart tab completion for
# TaskWarrior<http://taskwarrior.org/>. It uses the zsh tab completion
# script (_task) distributed with TaskWarrior for the completion definitions.
#
# Typing task[tabtab] will give you a list of current tasks, task 66[tabtab]
# gives a list of available modifications for that task, etc.
################################################################################

zstyle ':completion:*:*:task:*' verbose yes
zstyle ':completion:*:*:task:*:descriptions' format '%U%B%d%b%u'

zstyle ':completion:*:*:task:*' group-name ''

alias t=task
compdef _task t=task

function tp() {
    project=$(basename `pwd`);
    tasks_project=( $(task _projects | grep $project) );
 
#    if [[ -n $tasks_project ]]; then
        task "$@" project:$project;
#    else
#        task "$@"
#    fi
}
