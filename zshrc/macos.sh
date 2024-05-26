eval "$(pyenv init -)"
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
. ~/.pyenv/versions/3.12.2/bin/virtualenvwrapper.sh

# export kitty os variable
export KITTY_OS=macos

function replace_icons() {
    cp "/Users/jamie/.custom-icons/Code - Insiders.icns" "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/Code.icns"
    touch "/Applications/Visual Studio Code - Insiders.app"
}

function code() {
    code-insiders $@
}

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

### ALIASES ###
alias l='command ls -Av1hGl'

# -A: show all, including dotfiles except . and ..
# -v: natural sort of number
# -1: one file per line: use -l for long versions
# -h: human readable sizes
