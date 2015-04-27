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

### 20150316 joyent
export SDC_URL=https://us-east-3b.api.joyent.com
export SDC_ACCOUNT=lloyd.dewolf
export SDC_KEY_ID=5a:4a:84:32:c4:16:90:f3:0a:9b:dd:1f:d9:87:86:36
export MANTA_URL=https://us-east.manta.joyent.com
export MANTA_USER=${SDC_ACCOUNT}
export MANTA_KEY_ID=${SDC_KEY_ID}
export DOCKER_CERT_PATH=/Users/ll/.sdc/docker/lloyd.dewolf
export DOCKER_HOST=tcp://us-east-3b.docker.joyent.com:2376
alias docker="docker --tls"

### 20150423 joyent daily
alias scrum="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum"
alias wip="MANTA_USER=Joyent_Dev;/Users/ll/wrk/engdoc/roadmap/bin/scrum lloyd"


# what do I have planned for today.
function plan {
	local today=$(date +"%Y%m%d")
	local numDayOfWeek=$(date +%u)
	if [[ "$numDayOfWeek" -gt 5 ]]; then
		# it's the weekend, let's look back at Friday's plan
		today=$(date -v"$((5-$numDayOfWeek))d" +"%Y%m%d")
	fi
	echo "$today"
	cat "/Users/ll/Dropbox/wrk/joyent/scrum/$today-my-scrum";
}


# Work In ProgresED
function wiped {
	local today=$(date +"%Y%m%d")
	for i in $(ls -1 "/Users/ll/Dropbox/wrk/joyent/scrum/" | grep -B 5 "$today-my-scrum"); do
		echo "$i";
		awk '/## Previous/ {flag=1;next} /## Planned/{flag=0} flag {print}' \
			"/Users/ll/Dropbox/wrk/joyent/scrum/$i";
	done
}

# "Everybody has a plan until they get punched in the mouth." ~Mike Tyson
function punched {
	local today=$(date +"%Y%m%d")
	for i in $(ls -1 "/Users/ll/Dropbox/wrk/joyent/scrum/" | grep -B 10 "$today-my-scrum"); do
		sed -n -e '/## Planned/,$p' "/Users/ll/Dropbox/wrk/joyent/scrum/$i";
	done
}


function morrow {
	local today=$(date +"%Y%m%d")
	local numDayOfWeek=$(date +%u)
	local weekday=$(date +"%A")
	local nextWorkDay
	if [[ "$numDayOfWeek" -lt 4 ]]; then
		nextWorkDay=$(date -v"+1d" +"%Y%m%d")
	else
		# Don't play work on weekends.
		nextWorkDay=$(date -v"+$((8-$numDayOfWeek))d" +"%Y%m%d")
	fi

	local morrowScrumFile="/Users/ll/Dropbox/wrk/joyent/scrum/$nextWorkDay-my-scrum"

	if [[ ! -f "$morrowScrumFile" ]]; then
		cat << EOF > $morrowScrumFile
mood:

## Accomplished ${weekday}, ${today}
-
-

## Planned For ${nextWorkDay}
-
-
EOF
	fi
	vim -O "/Users/ll/Dropbox/wrk/joyent/scrum/$today-my-scrum" "$morrowScrumFile"
}


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
