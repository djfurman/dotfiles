# CLI Shortcuts
alias copyrsa="pbcopy < $HOME/.ssh/id_rsa.pub"
alias copyec="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
## Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias code="cd $HOME/Code"
alias journal="cd $Home/notes"
## Brew
alias bu="brew update && brew upgrade && brew cleanup && brew prune"
alias bs="brew search"
alias ngu="npm install npm gulp webpack yarn vue-cli cordova laravel-echo-server -g"

# Development
alias t='clear && cat /dev/null > storage/logs/laravel.log && vendor/bin/phpunit'
alias g='clear && gulp'
## Laravel
alias art="php artisan"
alias tinker="php artisan tinker"
alias nlp="composer require --dev barryvdh/laravel-ide-helper && yarn install"
## Composer
### Commented out as I'm currently using the ZSH composer plugin, but I'm not a huge fan
alias ci="composer install"
alias cu="composer update"
alias cdu="composer dump-autoload"
alias cr="composer require"
alias crd="composer require --dev"
alias cgu="composer global update"
alias cgr="composer global require"
## Yarn
alias ya="yarn add"
alias yad="yarn add --dev"
alias yi="yarn install"
alias yu="yarn update"
## IDEs
alias storm='open -a /Applications/PhpStorm.app "`pwd`"'
alias charm='open -a /Applications/PyCharm.app "`pwd`"'
alias vm="vagrant ssh"
## Git Stuff
alias mygnew="git init && git config user.name '$GIT_USER_NAME' && git config user.email $GIT_PERSONAL_EMAIL && git flow init -d"
alias workgnew="git init && git config user.name '$GIT_USER_NAME' && git config user.email $GIT_WORK_EMAIL && git flow init -d"
alias gs='git status'
alias gl='git log'
alias gf='git flow'
alias gff='git flow feature'
alias gac='git add . && git commit -m'
alias nah='git reset --hard && git clean -df'
