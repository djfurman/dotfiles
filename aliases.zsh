#################
# CLI Shortcuts #
#################
alias copyrsa="pbcopy < $HOME/.ssh/id_rsa.pub"
alias copyec="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias copyredis="echo -n $REDIS_TOKEN | pbcopy"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
## Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias etl="cd $HOME/Code/etl"
alias web="cd $HOME/Code/web"
alias utils="cd $HOME/Code/utils"
alias xps="cd $HOME/Code/xps"
alias journal="cd $HOME/Documents/Notes"
## Brew
alias bu="brew update && brew upgrade && brew cleanup && brew prune"
alias bs="brew search"
alias ngu="npm install cross-env @vue/cli eslint eslint-plugin-vue -g"
###############
# Development #
###############
alias t='clear && cat /dev/null > storage/logs/laravel.log && vendor/bin/phpunit'
## Laravel
alias art="php artisan"
alias tinker="php artisan tinker"
alias nlp="composer require --dev predis/predis && yarn install"
## Composer
alias ci="composer install"
alias cu="composer update"
alias cdu="composer dump-autoload"
## Git Stuff
alias gs='git status'
alias gl='git log'
alias gf='git flow'
alias gff='git flow feature'
alias nah='git reset --hard && git clean -df'
