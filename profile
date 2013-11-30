export PS1="[\u@\w]"
export LANG="en_US.UTF-8"

OS=$(uname)
echo "OS:"$OS

if [ "$OS" == "Darwin" ] 
then

# MacPorts Installer addition on 2013-04-14_at_16:00:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
source /opt/local/etc/bash_completion
source /opt/local/share/git-core/git-prompt.sh
alias ctags="`brew --prefix`/bin/ctags"

elif [ "$OS" == "Linux" ] 
then
echo "set for linux"

alias api="apt-get install"
alias aps="apt-cache search"
alias sudo='sudo '

fi

export PATH=$PATH:~/sdk/adk/tools:~/sdk/adk/platform-tools

export NDK_ROOT=~/sdk/andk
export ANDROID_SDK_ROOT=~/sdk/adk



alias ls='ls -alG'
