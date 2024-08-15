typeset -U PATH path
path+=/bin
path+=/usr/local/bin
path+=/usr/local/texlive
path+=$ZSH/bin
path+=$HOME/.cargo/bin
path+=$HOME/.local/bin
path+=$HOME/miniconda3/bin
path+=$HOME/.tmux/plugins/tmuxifier/bin/
path+=$HOME/timewarrior/timewarrior.plugin.zsh
path+=$HOME/node_modules/.bin/
path+=$TEXMFDIST/scripts/texlive/tlmgr.pl

eval "$(tmuxifier init -)"
