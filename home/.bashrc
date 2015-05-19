### 20120524 added own bin to end of path
export PATH=${PATH}:~/bin
### 20150309
export GOPATH=${HOME}/gopath
### 20150315
export PATH=${PATH}:${GOPATH}/bin

### 20110224 vi mode
set -o vi

### 20110224 vim default editor
export VISUAL=vim

### 20100608 ldb colorize `ls
export CLICOLOR=auto

### home directory application configuration SCM management
### https://github.com/andsens/homeshick/
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

### 20150316 joyent
export SDC_URL=https://us-east-3b.api.joyent.com
export SDC_ACCOUNT=lloyd.dewolf
export SDC_KEY_ID=5a:4a:84:32:c4:16:90:f3:0a:9b:dd:1f:d9:87:86:36
export MANTA_URL=https://us-east.manta.joyent.com
export MANTA_USER=${SDC_ACCOUNT}
export MANTA_KEY_ID=${SDC_KEY_ID}
export DOCKER_CERT_PATH=/Users/ll/.sdc/docker/lloyd.dewolf
export DOCKER_HOST=tcp://us-east-3b.docker.joyent.com:2376
export DOCKER_TLS_VERIFY=1

### 20150423 joyent daily
alias scrum="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum"
alias wip="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum lloyd"

source ~/.bash.d/joyent-wip

if [ "$(uname)" == "Darwin" ]; then

	### 20150326 mac specific
	# Shortcuts to the Mac OS Spotlight commands
	alias f='mdfind -onlyin . -name '
	alias fs='mdfind -onlyin . '
	alias fh='mdfind -onlyin ${HOME} -name '
	alias fhs='mdfind -onlyin ${HOME} '

	### 20100730 mac kaleidoscopeapp.com
	### svn diff --diff-cmd=ksdiff-svnwrapper
	alias skdiff='svn diff --diff-cmd=ksdiff-svnwrapper'
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
