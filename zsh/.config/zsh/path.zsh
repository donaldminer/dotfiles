typeset -U PATH path
path+=/bin
path+=/usr/local/bin
path+=/usr/local/texlive/2025/bin/x86_64-linux
path+=$ZSH/bin
path+=$HOME/.cargo/bin
path+=$HOME/.local/bin
path+=/usr/local/miniconda3/bin
path+=$HOME/.tmux/plugins/tmuxifier/bin/
path+=$HOME/timewarrior/timewarrior.plugin.zsh
path+=$HOME/node_modules/.bin/
path+=$TEXMFDIST/scripts/texlive/tlmgr.pl
path+=$ANDROID_HOME/emulator
path+=$ANDROID_HOME/platform-tools
path+=$ANDROID_HOME/tools
path+=$HOME/.dotnet/tools
eval "$(tmuxifier init -)"
