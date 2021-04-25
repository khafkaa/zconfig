export LANG="en_US.UTF-8"

export VIRTUAL_ENV_DISABLE_PROMPT=1
export CONFIG="~/.tmux.conf"
export PYTHONPATH="/Users/kafka/Documents/devops/plib/mods"

#set vim as default editor 
export PATH=$PATH:$HOME/bin
export EDITOR='vim'

#set gopath and gopath/bin
export GOPATH=$HOME/.local/go
export PATH=$PATH:$GOPATH/bin

typeset -U FPATH fpath
fpath=(~/.zcfg/zlib $fpath)

