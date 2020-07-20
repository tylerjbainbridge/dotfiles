# Path to your oh-my-zsh installation.
export ZSH=/Users/tylerbainbridge/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
# ZSH_THEME="pure"
ZSH_THEME="zsh-pure"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd npm zsh-autosuggestions osx web-search zsh-syntax-highlighting)
# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# export PATH=/usr/local/php5/bin:$PATH

# export PATH=~/Library/Python/3.4/bin:$PATH

# pyenv stuff
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

alias zshconfig="code ~/.zshrc"

alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcs='docker-compose stop'
alias engine-bash='docker exec -it kingfisher_engine_1 bash'
alias webpack-bash='docker exec -it kingfisher_webpack_1 bash'
alias run-kingfisher='wd kingfisher && docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.with-single-engine.yml up webpack engine osprey osprey-worker osprey-scheduler redis db'
alias run-kingfisher-backend='wd kingfisher && docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.with-single-engine.yml up engine osprey osprey-worker osprey-scheduler redis db'
alias run-sandpiper='wd sandpiper && npx react-native run-ios --simulator="iPhone X" & react-native start'
alias work='wd kingfisher && conduit-up'

alias kube-prod='gcloud container clusters get-credentials kingfisher-production --zone us-central1-f --project conduit-app';

alias dcfront='docker-compose up engine webpack db'
alias dcback='docker-compose up osprey osprey-worker osprey-scheduler db'

# Disable spell check
unsetopt correct_all

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tylerbainbridge/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/tylerbainbridge/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tylerbainbridge/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/tylerbainbridge/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Load rbenv
eval "$(rbenv init -)"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
