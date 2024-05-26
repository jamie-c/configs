# Virtualenvwrapper settings:
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
source /home/jamie/.local/bin/virtualenvwrapper.sh

# export kitty os variable
export KITTY_OS=linux

export PATH="$PATH:/usr/sbin"

# Add pip /home/jamie/.local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

# Add flatpak directory to path
export PATH="$PATH:/var/lib/flatpak/exports/share:/home/jamie/.local/share/flatpak/exports/share"

# Export ollama path to store models
export OLLAMA_MODELS=/home/jamie/.local/opt/models

source ~/.zsh-nvm/zsh-nvm.plugin.zsh

### ALIASES ###
alias l='command ls -Av1hl --color=always --time-style=long-iso --group-directories-first'
 
# -A: show all, including dotfiles, except . and ..
# -v: natural sort of number
# -1 (one): list (use -l for long version)
# -h: human-readable sizes
