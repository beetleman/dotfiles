# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# export DISABLE_AUTO_TITLE='true'

# xterm colors
export TERM=rxvt-unicode

# mc
export MC_SKIN=gotar

# my bin
PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH

# boot (clojure)
export BOOT_EMIT_TARGET=no

#screend
PATH=$HOME/.screenlayout/:$PATH

export PATH
