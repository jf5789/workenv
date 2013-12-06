OS=$(uname)

function check_and_run
{
	if [ -f $1 ]
   	then 
		source $1 
	fi
}


#############################################
if [ "$OS" == "Darwin" ] ;then
echo "set for mac"

# MacPorts Installer addition on 2013-04-14_at_16:00:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
check_and_run /opt/local/etc/bash_completion
check_and_run /opt/local/share/git-core/git-prompt.sh
alias ctags="`brew --prefix`/bin/ctags"
alias ls='ls -alG'

#############################################
elif [ "$OS" == "Linux" ] ;then
echo "set for linux"

alias api="apt-get install"
alias aps="apt-cache search"
alias sudo='sudo '
alias ls='ls -al --color=auto'

#############################################
else
echo "unknow OS"

fi

#############################################
export PATH=$PATH:~/sdk/adk/tools:~/sdk/adk/platform-tools
export NDK_ROOT=~/sdk/andk
export ANDROID_SDK_ROOT=~/sdk/adk
export PS1="[\u@\w]"
export LANG="en_US.UTF-8"

