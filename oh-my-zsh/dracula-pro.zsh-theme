local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

PROMPT='%{$fg[yellow]%}[%D{%Y-%m-%f} %D{%L:%M:%S}] %F{77}%n %{$fg_bold[blue]%}%c $(git_prompt_info)% 
%{$fg_bold[green]%}❯ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg_bold[yellow]%}✘ "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
