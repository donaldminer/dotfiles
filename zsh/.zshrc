# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
export ZSH="$HOME/dotfiles"

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a "$HOME/.localrc" ]]
then
  source "$HOME/.localrc"
fi

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/.config/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit && compinit -d $HOME/.config/zsh/zcompdump

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
  source $file
done


# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/miniconda3/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [[ -n "$TMUX" ]] then
  export flavor='conda'
  source $HOME/.tmux/plugins/tmux-conda-inherit/conda-inherit.sh
fi
