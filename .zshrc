# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dallasbaker/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#Shorten directory shown
POWERLEVEL9K_MODE='nerdfont-complete'



# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"


# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew node npm z copyfile vscode web-search zsh-autosuggestions zsh-wakatime)
source $ZSH/oh-my-zsh.sh

# completions path
fpath=("$ZSH/completions" $fpath)


source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# source ~/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


eval "$(starship init zsh)"
# pnpm
export PNPM_HOME="/Users/dallasbaker/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
