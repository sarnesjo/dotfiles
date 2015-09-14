export EDITOR=vim
export LESSHISTFILE=-
export MANPATH="/usr/local/share/man:/usr/share/man"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

if [[ $(uname) == "Darwin" ]]; then
  alias l="ls -AFGl"
elif [[ $(uname) == "Linux" ]]; then
  alias l="ls -AFl --color=auto"
fi

if [ -r /usr/local/etc/bash_completion ]; then . /usr/local/etc/bash_completion; fi
if [ -r /etc/bash_completion ]; then . /etc/bash_completion; fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [[ $(command -v __git_ps1) == "__git_ps1" ]]; then
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWSTASHSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export PS1="\[\e[1;36m\]\w\[\e[0m\]\$(__git_ps1 ':%s') ♪ "
else
  export PS1="\[\e[1;36m\]\w\[\e[0m\] ♪ "
fi

function unquarantine {
  xattr -d com.apple.metadata:kMDItemDownloadedDate "$@"
  xattr -d com.apple.metadata:kMDItemWhereFroms "$@"
  xattr -d com.apple.quarantine "$@"
}
