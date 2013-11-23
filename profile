export PS1="[\u@\w]"
export LANG="en_US.UTF-8"
# MacPorts Installer addition on 2013-04-14_at_16:00:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=$PATH:~/sdk/adt-bundle-mac-x86_64-20130717/sdk/tools
export NDK_ROOT=/Users/abc/sdk/android-ndk-r8e
export ANDROID_SDK_ROOT=/Users/abc/sdk/adt-bundle-mac-x86_64-20130717/sdk

export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin

source /opt/local/etc/bash_completion
source /opt/local/share/git-core/git-prompt.sh

alias ls='ls -alG'
alias ctags="`brew --prefix`/bin/ctags"
