# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bruno/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
TERM=xterm-256color

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

zsh_docker() {
  systemctl status docker > /dev/null
  if [[ $? -eq 0 ]] ;then
    echo -en "%F{006%} \uF308"
  else
    echo -en "%F{010%}\uF31A"
  fi
}

prompt_music(){
  local color='%F{234}\uE0BE%K{234}%F{202}'
  playerctl status > /dev/null 2> /dev/null
  if [ $? -eq 1 ] ; then
    echo -ne "%{$color%} ♫ "
  else
    local artist=$(playerctl metadata xesam:artist)
    local album=$(playerctl metadata xesam:album)
    local track=$(playerctl metadata xesam:title)
    echo -ne "%{$color%} ♫ $track "
    #echo -ne "%{$color%} ♫ $track - $artist"
    #echo -ne "%{$color%} ♫ $track - $artist $album"
  fi
}

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0BC"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0BE"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_docker battery dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv time background_jobs ssh dir_writable)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(music time background_jobs ssh dir_writable)

POWERLEVEL9K_OS_ICON_BACKGROUND=000
POWERLEVEL9K_OS_ICON_FOREGROUND=040

POWERLEVEL9K_COLOR_SCHEME='dark'

POWERLEVEL9K_CUSTOM_DOCKER="zsh_docker"
POWERLEVEL9K_CUSTOM_DOCKER_FOREGROUND=000
POWERLEVEL9K_CUSTOM_DOCKER_BACKGROUND=000

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL9K_SHORTEN_DELIMITER="···"

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=024
POWERLEVEL9K_DIR_HOME_BACKGROUND=024
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=024
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=015
POWERLEVEL9K_DIR_HOME_FOREGROUND=015
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=015

POWERLEVEL9K_STATUS_OK_BACKGROUND=000
POWERLEVEL9K_STATUS_OK_FOREGROUND=040
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=000
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_TIME_FOREGROUND=000
POWERLEVEL9K_TIME_BACKGROUND=159

POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=001
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=000

POWERLEVEL9K_BATTERY_ICON='⚡'
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=20
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=053
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=022
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=019
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=001
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=255
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=255
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=255
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=255

POWERLEVEL9K_VCS_CLEAN_BACKGROUND=040
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=000
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=001
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=015
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=226
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=000

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export $(gnome-keyring-daemon --daemonize --start)

source ~/.zprofile

