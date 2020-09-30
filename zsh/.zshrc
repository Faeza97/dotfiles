source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Plugins
antigen bundle mengelbrecht/slimline

# Theme
export SLIMLINE_PROMPT_VERSION=1 # Activate legacy option format

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

if [ -z "$TMUX" ]
then
  tmux attach -t "default" || tmux new -s "default"
fi

# Load defaults
source ~/.bash_profile

antigen apply

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"
. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
