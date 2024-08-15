bindkey -v

# History
HISTSIZE=100000
SAVEHIST=10000
HISTFILE=$HOME/.config/zsh/.histfile
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt histignorespace
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

setopt complete_aliases
