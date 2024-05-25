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
