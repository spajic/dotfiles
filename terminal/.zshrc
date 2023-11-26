# DO NOT COMMIT ANY SECRETS HERE
source antigen.zsh

antigen use oh-my-zsh

# plugins
antigen bundle git
antigen bundle rails
antigen bundle rbenv
antigen bundle rake
antigen bundle bundler
antigen bundle ruby
antigen bundle agkozak/zsh-z
antigen bundle zsh-users/zsh-autosuggestions
# antigen theme candy
antigen apply

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL='en_US.UTF-8' # Поддержка кириллицы

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl -w'
fi
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# ALIASES
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# RBENV
eval "$(rbenv init -)"

# POSTGRES
export PGHOST=localhost

# BUNDLER
export BUNDLER_EDITOR=EDITOR

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export AWSCLIPATH="$HOME/Library/Python/2.7/bin"
export PATH=$PATH:$AWSCLIPATH

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
