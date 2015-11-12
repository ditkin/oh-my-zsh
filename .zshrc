autoload -U promptinit
promptinit

setopt extendedglob

# Path to your oh-my-zsh installation.
export ZSH=/Users/ditkin/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="garyblessington"

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

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
ENABLE_CORRECTION="true"

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
[ -s "/Users/ditkin/.scm_breeze/scm_breeze.sh" ] && source "/Users/ditkin/.scm_breeze/scm_breeze.sh"
plugins=(git bundler osx rake ruby tmux rvm mvn selenium)

# User configuration

export PATH="/opt/jruby/bin:/usr/local/mysql/bin:~/bin:/usr/local/share/npm/bin:/usr/local/lib/node_modules/karma/bin:/usr/local/mysql/bin:/usr/local/mysql/support-files:/Users/ditkin/.rvm/gems/ruby-2.2.2/bin:/Users/ditkin/.rvm/rubies/ruby-2.2.2/bin:/usr/local/mysql/bin:~/bin:/usr/local/mysql/bin:/usr/local/mysql/support-files:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ditkin/.rvm/bin:/Users/ditkin/Downloads/phantomjs-2.0.0-macosx/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export PLUGIN="/Users/ditkin/.oh-my-zsh/plugins"

source $ZSH/oh-my-zsh.sh
source $PLUGIN/git/git.plugin.zsh
source $PLUGIN/common-aliases/common-aliases.plugin.zsh
source $PLUGIN/jruby/jruby.plugin.zsh

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
source $HOME/.aliases
#autoload -U colors && colors
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==02=01}:${(s.:.)LS_COLORS}")'
# ls with color
eval `gdircolors ~/.dir_colors`
alias ls='gls --color'
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
PROMPT='%{$fg[magenta]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}: '

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 


