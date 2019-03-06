# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fino"

# Custom theme
# https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs) #time
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
# POWERLEVEL9K_STATUS_VERBOSE=false
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
# Font is 14pt Iconsolata for Powerline with Solarized Dark iterm2 colors.


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git ruby rails rake rbenv zsh-syntax-highlighting osx tmux sublime colored-man-pages bundler
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# added via travis gem
if test $(which travis); then
  [ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export PARALLEL_TEST_PROCESSORS=4

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# reload zsh config
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
# rails credentials edit
alias rcedit='EDITOR="subl --wait" bin/rails credentials:edit'
# show rails pid
alias pidrails='lsof -wni tcp:3000'
# rails db reset
alias dbreset="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
# last command copy
alias lcc='fc -ln -1 | awk "{\$1=\$1}1" ORS="" | pbcopy'
# sleep wake log
alias swlog='sudo pmset -g log | sed -E "/Assert|UU/d" | tail -n 50 | pbcopy'
# html to pdf
alias h2p='wkhtmltopdf'
# VDCAssistant is used by the CoreMediaIO Device Abstraction Layer Plug-In
# that provides video capture from some models of Apple FaceTime cameras
# and external third-party USB VDC-class cameras using AVFoundation Capture
# APIs.  The process allows multiple applications to simultaneously capture
# from the same camera.
# kill camera
alias kcamera='sudo killall VDCAssistant'  
# kill spotlight
alias kspotlight='killall Spotlight'
# flush dns
alias dnsflush='killall -HUP mDNSResponder'
# my ip
alias myip='curl icanhazip.com'

PATH=${PATH}:/usr/local/
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/usr/local/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/usr/local/opt/rbenv/bin
PATH=${PATH}:$HOME/.rbenv/shims
PATH=${PATH}:$HOME/.rbenv/bin
PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/11/bin
PATH=${PATH}:$HOME/Library/Python/2.7/bin

export PATH=${PATH}
