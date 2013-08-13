export PATH="/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin"

eval "$(hub alias -s)"

function cdgem() { pushd `bundle show $@` ;}
function ackgems() { ack $@ `bundle show --paths` ;}
function hotfix() { bundle exec cap production deploy:hotfix FILES="$@" ;}
