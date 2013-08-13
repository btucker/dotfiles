export PATH="/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin"

eval "$(hub alias -s)"

function cdgem() { pushd `bundle show $@` ;}
function ackgems() { ack $@ `bundle show --paths` ;}
alias ackgem=ackgems
alias duhs="du -hs * | /usr/local/Cellar/coreutils/8.21/libexec/gnubin/sort -h -r"
function hotfix() { bundle exec cap production deploy:hotfix FILES="$@" ;}
