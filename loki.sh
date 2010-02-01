# the beloved PATH
PATH="/opt/local/bin:/opt/local/sbin:$PATH"
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PATH="/opt/local/lib/python2.4/site-packages/django/bin:$PATH"
PATH="/Applications/Shoes.app/Contents/MacOS:$PATH"
PATH="$PATH:/Users/peter/projects/code_swarm/bin"
PATH="$PATH:/Users/peter/build/llvm/Debug/bin:/Users/peter/build/llvm/tools/clang/utils"
PATH="$PATH:/opt/devx86/bin"
PATH="/usr/local/git/bin:$PATH"
PATH="$PATH:$HOME/.cabal/bin"
PATH="${PATH}:${HOME}/build/unify/scripts"
PATH="${PATH}:${HOME}/build/narwhal/bin"
PATH="${PATH}:${HOME}/homebrew/bin"
PATH="${PATH}:${HOME}/.cabal/bin"

# Setting PATH for MacPython 2.5
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH


# Use TextMate for editing things (mostly commit messages)
export EDITOR='mate -w'
export SVN_EDITOR='mate -w'
export VISUAL='mate -w'


#tab completion for python repl
export PYTHONSTARTUP=~/.pythonrc.py


## Software config

# `ls /Users/peter/projects/code_swarm/lib/*.jar | tr '\n' ':'`
# Java stuff
export CLASSPATH=.:`ls /Users/peter/java_software/*.jar | tr '\n' ':'`:/Users/peter/projects/code_swarm/dist/code_swarm.jar
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# needed for (a very old version of) Frets On Fire
PYTHONPATH=/Users/peter/projects/providence/src:$PYTHONPATH
export PYTHONPATH=/Users/peter/projects/fretsonfire/lib/Numeric:/Users/peter/build/unify:$PYTHONPATH


#Freebase stuff
# export PYTHONPATH=/Users/peter/build/me/pyroot:/Users/peter/build/mwsystools/pyroot:$PYTHONPATH

# *shudder* perforce
export P4PORT=antlr.org:666
export P4CLIENT=peter.english
export P4USER=peter


#source ~/build/j/j.sh
