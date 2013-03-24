export EDITOR="vim"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
export MANPATH="/usr/local/share/man:/usr/llvm-gcc-4.2/share/man:/usr/share/man"

export LANG="en_US.UTF-8"

export HISTSIZE="10000"     # save this many lines from a single shell
export HISTFILESIZE="10000" # save this many lines in the history file

shopt -s histappend   # append to, rather than overwrite, history file
shopt -s checkwinsize # check window size after each command
shopt -s cmdhist      # save multi-line commands in one history entry

if [[ $(uname) == "Darwin" ]]; then
  alias l="ls -AFGl"
elif [[ $(uname) == "Linux" ]]; then
  alias l="ls -AFl --color=auto"
fi

if [ -r /usr/local/etc/bash_completion ]; then . /usr/local/etc/bash_completion; fi
if [ -r /etc/bash_completion ]; then . /etc/bash_completion; fi

# show git branch in prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1="\[\e[1;36m\]\w\[\e[0m\]\$(__git_ps1 ':%s') ♪ "
