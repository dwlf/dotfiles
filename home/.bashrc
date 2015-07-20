export PATH=${PATH}:~/bin
export GOPATH=${HOME}/gopath
export PATH=${PATH}:${GOPATH}/bin
# Add Ruby RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# bash vi mode
set -o vi

# vim default editor
export VISUAL=vim

# colorize ls
export CLICOLOR=auto

# home directory application configuration SCM management
# https://github.com/andsens/homeshick/
source "$HOME/.homesick/repos/homeshick/homeshick.sh"


# ---- Joyent ----

export SDC_ACCOUNT=lloyd.dewolf
export SDC_URL=https://us-east-3b.api.joyent.com
export SDC_KEY_ID=5a:4a:84:32:c4:16:90:f3:0a:9b:dd:1f:d9:87:86:36
export MANTA_URL=https://us-east.manta.joyent.com
export MANTA_USER=${SDC_ACCOUNT}
export MANTA_KEY_ID=${SDC_KEY_ID}

function e3b {
    export DOCKER_CERT_PATH=/Users/ll/.sdc/docker/lloyd.dewolf
    export SDC_URL=https://us-east-3b.api.joyent.com
    export DOCKER_HOST=tcp://us-east-3b.docker.joyent.com:2376
    export DOCKER_TLS_VERIFY=1
}
function e1 {
    export DOCKER_CERT_PATH=/Users/ll/.sdc/docker/lloyd.dewolf
    export SDC_URL=https://us-east-1.api.joyent.com
    export DOCKER_HOST=tcp://us-east-1.docker.joyent.com:2376
    export DOCKER_TLS_VERIFY=1
}
function s1 {
    export DOCKER_CERT_PATH=/Users/ll/.sdc/docker/lloyd.dewolf
    export SDC_URL=https://us-sw-1.api.joyent.com
    export DOCKER_HOST=tcp://us-sw-1.docker.joyent.com:2376
    export DOCKER_TLS_VERIFY=1
}

alias scrum="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum"
alias wip="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum lloyd"

source ~/.bash.d/joyent-wip


# ---- OS Specific ----

if [ "$(uname)" == "Darwin" ]; then

	# Shortcuts to the Mac OS Spotlight commands
	alias f='mdfind -onlyin . -name '
	alias fs='mdfind -onlyin . '
	alias fh='mdfind -onlyin ${HOME} -name '
	alias fhs='mdfind -onlyin ${HOME} '

	# Date Added
	alias lsadded='find . -depth 1 -exec mdls -name kMDItemFSName -name kMDItemDateAdded "{}" \; | sed -e "s/^kMDItemFSName    = \"\(.*\)\"/ \1/g" | sed "N;s/\n//" | sed -e "s/(null)/0000-00-00 00:00:00 +0000/g" | '"awk '{print \$3 \" \" \$4 \" \" substr(\$0,index(\$0,\$6))}'"


	# mac kaleidoscopeapp.com
	# svn diff --diff-cmd=ksdiff-svnwrapper
	alias skdiff='svn diff --diff-cmd=ksdiff-svnwrapper'
fi
