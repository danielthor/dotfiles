ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_EXTENDED_PWD="%3~"
ZSH_THEME_SSH_PROMPT_INFO="[%{$fg[yellow]%}%m%{$reset_color%}]"

PROMPT='%{$fg[blue]%}$(git_prompt_base_dir)%{$reset_color%}$(git_prompt_info)%{$fg[green]%}$(git_prompt_sub_dir)%{$reset_color%}%# '
#RPROMPT="$(ssh_prompt_info)"
