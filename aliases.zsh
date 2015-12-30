# Common Aliases
alias la='ls -lah'
alias cdb='cd ..'
alias cdbb='cd ../..'
alias cdbbb='cd ../../..'
alias t='tail -f'
alias cdp='popd'
alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias sz='source ~/.zshrc'
alias s='source'
alias vimrc='vim ~/.vimrc'
alias omz='cd ~/.oh-my-zsh'
alias grep='grep --color'
alias h='history'
alias hg='history | grep'
alias fg='find ./ | grep'

# Bundler
alias be="bundle exec"
alias bl="bundle list"
alias bp="bundle package"
alias bo="bundle open"
alias bu="bundle update"
alias bi="bundle install"
alias bcn="bundle clean"

# Rake
alias rds='rake db:seed'
alias rdr='rake db:reset'
alias rdc='rake db:create'
alias rdm='rake db:migrate'

# Tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Rvm
alias rvl='rvm list'
alias rvu='rvm use'
alias rgu='rvm gemset use'
alias rgc='rvm gemset create'
alias rgl='rvm gemset list'

# Gem
alias gi='gem install'

# Selenium
alias wmu='webdriver-manager update'
alias wms='webdriver-manager start'
alias prt='protractor'

# Vagrant
alias vu='vagrant up' 
alias vgs='vagrant global-status'
alias vs='vagrant ssh'
alias vp='vagrant provision'
alias vd='vagrant destroy'
alias vrp='vagrant reload --provision'
