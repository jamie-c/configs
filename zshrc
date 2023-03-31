eval "$(pyenv init -)"
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
. ~/.pyenv/versions/3.10.6/bin/virtualenvwrapper.sh

# Uncomment the following line to make emacs run in the shell window.
# alias emacs='emacs -nw'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add directory and git branch info to the prompt
# parse_git_branch() {
#        git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
#    }
    COLOR_DEF='%f'
    COLOR_USR='%F{77}'
    COLOR_STR='%F{243}'
    COLOR_DIR='%F{126}'
    COLOR_GIT='%F{39}'
    COLOR_YEL='%F{193}'
#    NEWLINE=$'\n'
#    setopt PROMPT_SUBST
#    export PROMPT='${COLOR_USR}%n@%M in ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}\$ '

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${COLOR_USR}%n ${COLOR_STR}in ${COLOR_DIR}${PWD/#$HOME/~} ${COLOR_GIT}${vcs_info_msg_0_}
${COLOR_DEF}> '

# Add date and time to the beginning of the prompt
PROMPT='${COLOR_YEL}[%D{%Y-%m-%f} %D{%L:%M:%S}] '$PROMPT

# Add zsh autocomplete for 1password items
eval "$(op completion zsh)"; compdef _op op

# Uss ssh keys stored in 1password vault
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
