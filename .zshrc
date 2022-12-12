# Created by newuser for 5.5.1

source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle supercrabtree/k

# Load the theme.
#antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply
prompt='%n@%m[%T]:{%~}%% '

PATH=${HOME}/pkg/sbin:${HOME}/pkg/bin:${PATH}
MANPATH=${HOME}/pkg/man:${MANPATH}


# Created by `userpath` on 2022-11-25 09:04:09
export PATH="$PATH:/home/segin/.local/bin"
