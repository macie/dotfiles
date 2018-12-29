# preparation
LOCAL_BIN=${HOME}/.local/bin
if ! [ -d ${LOCAL_BIN} ]; then
    mkdir -p ${LOCAL_BIN}
fi

# configuration
export PATH=${LOCAL_BIN}:/usr/local/bin:$PATH
export SSH_KEY_PATH="~/.ssh/dsa_id"

COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"

# antigen
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=7" 

if ! [ -f ${LOCAL_BIN}/antigen.zsh ]; then
    echo -n " → Installing antigen... "
    curl -sS -L git.io/antigen > ${LOCAL_BIN}/antigen.zsh
    chmod +x ${LOCAL_BIN}/antigen.zsh
    echo "done!"
fi

source antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme refined

antigen apply

# update notification
outdated_pkgs="$(checkupdates | wc -l)"
if [ ${outdated_pkgs} -gt 0 ]; then
    echo " ${outdated_pkgs} outdated packages"
fi
