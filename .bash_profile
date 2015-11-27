# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/AdditionalLibs/bin:$PATH
PATH=$HOME/AdditionalLibs/llvm-build/Release+Asserts/bin:$PATH
PATH=$HOME/AdditionalLibs/bin/scons/bin:$PATH
PATH=/opt/matlab/R2013b/bin:$PATH

export PATH

LD_LIBRARY_PATH=$HOME/AdditionalLibs/bin/scons/lib/scons:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
#GREP
export GREP_OPTIONS='--color=auto'
export GREP_COLORS='ms=01;04;33:ln=32:fn=34'
alias grep='grep -rnE'

source /opt/rh/devtoolset-2/enable
source /opt/cuda/cuda-7.0/enable
source /opt/rh/git19/enable
source /opt/rh/python27/enable

eval `dircolors ~/dircolors.ansi-dark`
source .git-prompt.sh

#PS1='\[\e[1;37m\][\u@\h \W]\$\[\e[0m\] '
PS1='\[\e[1;32m\][\u@\h][\W]\[\e[0;33m\]$(__git_ps1)\[\e[1;32m\]\$\[\e[0m\] '
