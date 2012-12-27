c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

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

export EDITOR='vim'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias ll='ls -1Gh'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
