# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias gs='git status -uno'
alias gb='git branch'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source /root/.git-completion.bash

#export http_proxy=http://64.102.255.40:8080/
#export https_proxy=http://64.102.255.40:8080/
#export ftp_proxy=http://64.102.255.40:8080/
export no_proxy=.cisco.com

export au='/root/workspace/v2p-master/automation/'
export se='/root/workspace/v2p-master/services/'
export pl='/root/workspace/v2p-master/platform/'
export sc="$pl/v2p-node-provision/src/scripts/"
export bo="$pl/v2p-vm-mgr/src/python/vm_manager/bootstrap/"
export to='/root/workspace/v2pc-comet-util/build-util/'
