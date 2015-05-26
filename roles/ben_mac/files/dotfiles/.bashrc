#  ---------------------------------------------------------------------------
#
#  Description:  Generic bash configuration
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   GIT CONFIGURATION
#   -------------------------------

source ~/.git-completions
source ~/.git-prompt-info


#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

export PS1='\[\033[01;32m\]\u@\[\033[01;32m\]\h \[\033[01;36m\]\w \[\e[0;31m\]$(git_prompt)\[\e[m\] \n → '

#   -------------------------------
#   ALIASES
#   -------------------------------

function ll() { ls -lFh --color=always "$@" | grep -v .DS_Store ;}
alias ls='ls --color=always'
alias tree='tree -C'
alias tmux="tmux -2"

#   -------------------------------
#   CUSTOM CONFIGURATION
#   -------------------------------

source ~/.bashrc-custom
