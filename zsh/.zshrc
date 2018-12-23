
export PATH=$HOME/bin:/usr/local/bin:$PATH
export SSH_KEY_PATH="~/.ssh/dsa_id"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# antigen
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=7" 

if ! [ -f ./antigen.zsh ]; then
    curl -L git.io/antigen > ./antigen.zsh
fi

source ./antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme refined

antigen apply
