source $HOME/.local/bin/antigen.zsh

export PATH=$PATH:$HOME/.local/bin
​
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
​
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle docker
antigen bundle zdharma/history-search-multi-word
​
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
​
# Load the theme.
antigen theme bira
​
# Tell Antigen that you're done.
antigen apply
