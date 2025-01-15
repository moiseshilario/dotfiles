# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH configuration
ZSH_THEME="spaceship"
export ZSH_CUSTOM="$HOME/.custom"

plugins=(
  zsh-nvm
  zsh-autosuggestions
  #docker                    # docker autocompletion
  #gem                       # gem autocompletion
  gitfast                   # git faster autocompletion
  npm                       # npm autocompletion
  yarn                      # yarn autocompletion
  z                         # `z` navigator
  zsh-syntax-highlighting   # syntax highlighting for zsh
  git
  github
  colored-man-pages
  colorize
  macos
)

# config
export DOTFILES="$HOME/.dotfiles"
export DOTFILES_BIN="$DOTFILES/bin"
export DOTFILES_ZSH="$DOTFILES/zsh"
export DOTFILES_GIT="$DOTFILES/git"

# files
source $ZSH/oh-my-zsh.sh
source $DOTFILES_ZSH/.bootstrap

# loading node
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# loading rbenv
# eval "$(rbenv init - zsh)"

eval "$(direnv hook zsh)"

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/moiseshilario/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/moiseshilario/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/moiseshilario/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/moiseshilario/google-cloud-sdk/completion.zsh.inc'; fi
