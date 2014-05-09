export GOHOME="$HOME/.go"
export PATH="/usr/local/heroku/bin:$PATH:$HOME/.rvm/bin:$GOHOME/bin"

eval "$(hub alias -s)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

source ~/perl5/perlbrew/etc/bashrc

function cdgem() { pushd `bundle show $@` ;}
function ackgems() { ack $@ `bundle show --paths` ;}
alias ackgem=ackgems
alias duhs="du -hs * | /usr/local/Cellar/coreutils/8.21/libexec/gnubin/sort -h -r"
function hotfix() { bundle exec cap $@ deploy:hotfix FILES=`git show --name-only --pretty="format:" | perl -pe 's/(\w)\n/\1,/g; s/\n//g'` ;}

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
