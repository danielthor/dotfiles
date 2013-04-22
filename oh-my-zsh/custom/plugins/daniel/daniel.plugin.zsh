c() { cd ~/Code/projects/$1; }
_c() { _files -W ~/Code/projects -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# lists recent directories - optional -<n> parameter
lr() { ls -1t | head "$@"; }

# rsync folder to other folder, defaulting to movie folder
dl() { rsync -av --progress --exclude '*sample*' --exclude '*Sample*' --exclude '*!ut' ${1%/} ${2:-/Volumes/Elements\ II/Movies/}; }

function git_prompt_base_dir {
  git_dir=`git rev-parse --show-toplevel 2> /dev/null`
  if [ -n "$git_dir" ]; then
    # in a git dir
    echo `basename $git_dir`
  else
    # not in a git dir
    echo $ZSH_THEME_GIT_PROMPT_EXTENDED_PWD
  fi
}

function git_prompt_sub_dir {
  sub_dir=`git rev-parse --show-prefix 2> /dev/null`
  if [ -n "$sub_dir" ]; then
    echo "/${sub_dir%/}"
  else
    echo ""
  fi
}

function ssh_prompt_info {
  if [[ -n "$SSH_CLIENT" ]]; then
    echo $ZSH_THEME_SSH_PROMPT_INFO
  fi
}

export EDITOR='vim'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias ll='ls -1Gh'
alias g='git'

# weather alias
alias w='~/.oh-my-zsh/custom/plugins/daniel/bin/weather.rb'

# set umask
umask 022

# source z
. ~/.oh-my-zsh/custom/plugins/daniel/bin/z/z.sh

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

