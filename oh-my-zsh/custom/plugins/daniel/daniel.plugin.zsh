c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='vim'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias ll='ls -1Gh'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
