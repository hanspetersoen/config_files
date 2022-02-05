source "$ZSH_USER_CONF/alias.zsh"
source $ZSH_USER_CONF/fzf_completion.zsh
source $ZSH_USER_CONF/fzf_key_bindings.zsh
source $ZSH_USER_CONF/key_bindings.zsh

# Option stacking for docker extension
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes



