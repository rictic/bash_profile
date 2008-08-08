# the beloved PATH
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH=/opt/local/lib/python2.4/site-packages/django/bin:$PATH
PATH=$PATH:/Users/peter/bin
PATH=/Applications/Shoes.app/Contents/MacOS:$PATH

# Setting PATH for MacPython 2.5
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH


# Use TextMate for editing things (mostly commit messages)
export EDITOR='mate -w'
export SVN_EDITOR='mate -w'
export VISUAL='mate -w'




## Software config


# Java stuff
export CLASSPATH=.:/Users/peter/java_software/junit-4.4.jar:/Users/peter/java_software/antlr-2008-02-15.10.jar:/Users/peter/java_software/antlr-2.7.7.jar:/Users/peter/java_software/stringtemplate-3.1.jar:/Users/peter/java_software/gunit-1.0.3.jar
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

# code_swarm opengl requirement
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Users/peter/build/codeswarm/lib

# needed for (a very old version of) Frets On Fire
export PYTHONPATH=/Users/peter/projects/fretsonfire/lib/Numeric:$PYTHONPATH

#Freebase stuff
export PYTHONPATH=/Users/peter/build/me/pyroot:/Users/peter/build/mwsystools/pyroot:$PYTHONPATH

# in fink's configuration (apparently)
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# *shudder* perforce
export P4PORT=antlr.org:666
export P4CLIENT=peter.english
export P4USER=peter






cd projects