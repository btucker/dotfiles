export GOPATH="$HOME/go"
export PATH="$HOME/.rvm/bin:$GOPATH/bin:/usr/local/heroku/bin:$PATH:/usr/local/opt/go/libexec/bin"

eval "$(hub alias -s)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

source ~/perl5/perlbrew/etc/bashrc
source /usr/local/bin/virtualenvwrapper.sh
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

function cdgem() { pushd `bundle show $@` ;}
function ackgems() { ack $@ `bundle show --paths` ;}
alias ackgem=ackgems
alias duhs="du -hs * | /usr/local/Cellar/coreutils/8.21/libexec/gnubin/sort -h -r"
alias rasil=rails
alias raisl=rails

function hotfix() { bundle exec cap $@ deploy:hotfix FILES=`git show --name-only --pretty="format:" | perl -pe 's/(\w)\n/\1,/g; s/\n//g'` ;}

function vi() {
  if [[ $@ =~ ^([^:]+):([0-9]+)$ ]]; then
    echo "match";
    vim ${BASH_REMATCH[1]} +${BASH_REMATCH[2]};
  else
    vim $@;
  fi
}

function ctagup() {
  ctags -R --languages=ruby --exclude=.git --exclude=log .
}

export JAVA_HOME="$(/usr/libexec/java_home)"
# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.1.0/libexec"
export ANDROID_HOME=/usr/local/opt/android-sdk

# Added by termtile (https://github.com/apaszke/termtile)
alias fll='osascript ~/.termtile/tile.scpt up left'
alias ur='osascript ~/.termtile/tile.scpt up right'
alias dl='osascript ~/.termtile/tile.scpt down left'
alias dr='osascript ~/.termtile/tile.scpt down right'
alias fl='osascript ~/.termtile/tile.scpt left'
alias fr='osascript ~/.termtile/tile.scpt right'
alias up='osascript ~/.termtile/tile.scpt up'
alias down='osascript ~/.termtile/tile.scpt down'
alias big='osascript ~/.termtile/resize.scpt '
alias cen='osascript ~/.termtile/center.scpt '
alias max='osascript ~/.termtile/maximize.scpt '
alias sn='osascript ~/.termtile/changeScreen.scpt next'

