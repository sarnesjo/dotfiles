export PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/usr/local/share/man:/opt/local/share/man:$MANPATH"
export PS1="\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\] \$ "
export EDITOR="vim"

# use UTF-8
export LANG="en_US.UTF-8"
export __CF_USER_TEXT_ENCODING="0x1F5:0x8000100:0x8000100"

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

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
