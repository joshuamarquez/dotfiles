# Joshua's .zshrc

if [ ! -f ~/antigen.zsh ]; then
    echo "antigen.zsh not found!, downloading..."
    curl -L git.io/antigen > antigen.zsh
fi

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles.
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle bobthecow/git-flow-completion

# Load the theme.
antigen theme robbyrussell

# Docker command alias.
alias dps='docker ps --size --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Size}}"'
alias drminone='docker rmi $(docker images | grep none | awk "{print $3}")'
alias drmnone='docker rm $(docker ps -a --quiet)'
alias dcleanall='docker system prune -f && docker volume prune -f && docker network prune -f'

# General aliases.
alias sizeof="du -sh"

# We're done.
antigen apply
