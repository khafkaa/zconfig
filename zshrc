setopt AUTO_CD
setopt GLOB_COMPLETE

unsetopt NO_HUP

stty -echoctl

if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t mission-control || tmux new -s mission-control; exit
  fi
fi

source ~/.zcfg/zshenv
source ~/.zcfg/zprompt
source ~/.zcfg/aliases
source ~/.zcfg/spectrum
source ~/.zcfg/prenv
source ~/.zcfg/hashes

#autoload zlib
for command in ~/.zcfg/zlib/*[^/]; do autoload -Uz $command; done

autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd(){ clear; echolr ${PWD} 67; ls -G; }

#bindings:
#fn + left arrow: back one word
bindkey '^[[1~' backward-word

#fn + right arrow: forward one word
bindkey '^[[4~' forward-word



export PATH="/usr/local/sbin:$PATH"
