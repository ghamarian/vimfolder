# Path to your oh-my-zsh installation.
export ZSH=/Users/amir/.oh-my-zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git git-extras autojump gradle battery brew brew-cask colorize cp docker github gnu-utils gradle jira man osx pip pylint python rbenv scala tmux torrent vim-interaction wget z stack cabal common-aliases history urltools vi-mode npm tig)
# User configuration

export PATH="/Users/amir/.local/bin:/Users/amir/.rvm/gems/ruby-2.2.0/bin:/Users/amir/.rvm/gems/ruby-2.2.0@global/bin:/Users/amir/.rvm/rubies/ruby-2.2.0/bin:/usr/local/bin:/usr/local/sbin:/Users/amir/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/amir/.rvm/bin:/Users/amir/.rvm/bin:/usr/local/opt/go/libexec/bin:/Users/amir/work/bin:/Users/amir/datascience/data-science-at-the-command-line/tools:/Users/amir/datascience/data-science-at-the-command-line/node_modules/xml2json/bin:/usr/local/texlive/2015/bin/x86_64-darwin:/opt/local/bin:/opt/local/sbin:/Users/amir/.local/bin:/Users/amir/.stack/programs/x86_64-osx/ghc-8.0.1/bin:/Users/amir/projects/haskell/cis194/playground/git-slides/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

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

alias vi='/usr/local/bin/mvim'
alias ql='qlmanage -p "$@" >& /dev/null' 
alias kdel=' launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist'
alias ptpython2='python2.7 /usr/local/bin/ptpython --vi'
alias ptpython='ptpython --vi'
alias hstart="/usr/local/Cellar/hadoop/2.7.3/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.3/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/stop-dfs.sh"
alias jsfiles="find . -path ./node_modules -prune -o -name \*.js -print"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amir/.sdkman"
[[ -s "/Users/amir/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amir/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export LDFLAGS="-L/opt/local/lib"
LIBRARY_PATH="/usr/lib:/opt/local/lib"

set -o vi
alias scheme="rlwrap -r -c -f ~/mit_scheme_bindings.txt scheme"
# Use vim as the editor
export EDITOR=vim

# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

export JBOSS_HOME=/usr/local/opt/wildfly-as/libexec
export PATH=${PATH}:${JBOSS_HOME}/bin
#export PATH=":$PATH"
#
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
