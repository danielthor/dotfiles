ZSH=$HOME/.oh-my-zsh
ZSH_THEME="daniel"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(extract git bundler brew gem daniel)

export PATH="$HOME/.rbenv/bin:/usr/local/bin:$PATH"

# ruby garbage collection tweaks
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
