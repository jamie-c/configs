# Uncomment the following line to make emacs run in the shell window.
# alias emacs='emacs -nw'

# Directory to keep journals in
export logdir="$HOME/.journal"
# Auto-generate journal entry filename
function journal(){
    vim $logdir/$(date +%Y-%m-%d -d "$*").md
}

# Add zsh autocomplete for 1password items
eval "$(op completion zsh)"; compdef _op op
 
# Uss ssh keys stored in 1password vault
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
 
### ALIASES ###
alias l='command ls -Av1hl --color=always --time-style=long-iso --group-directories-first'
 
# -A: show all, including dotfiles, except . and ..
# -v: natural sort of number
# -1 (one): list (use -l for long version)
# -h: human-readable sizes
 
alias rm='command rm -Iv'
 
# -I: prompt once before removing more than three files or recursively
# -v: verbose
 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
 
# Export nvm completion settings for zsh-nvm plugin
export NVM_COMPLETION=true
 
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
