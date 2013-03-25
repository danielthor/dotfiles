ZSH=$HOME/.oh-my-zsh
ZSH_THEME="daniel"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(extract git bundler brew gem daniel)

export PATH="$HOME/.rbenv/bin:/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
