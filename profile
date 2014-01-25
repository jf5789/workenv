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

alias api="sudo apt-get install"
alias aps="apt-cache search"
alias sudo='sudo '
alias ls='ls -al --color=auto'

#############################################
else
echo "unknow OS"

fi

#############################################
export NDK_ROOT=~/sdk/andk
export ANDROID_SDK_ROOT=~/sdk/adk
export LIBIMOBILE_ROOT=~/sdk/libimobiledevice-macosx
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$NDK_ROOT:$LIBIMOBILE_ROOT
export DYLD_LIBRARY_PATH=$LIBIMOBILE_ROOT:$DYLD_LIBRARY_PATH
export PS1="[\u@\h:\w]"
export LANG="en_US.UTF-8"

