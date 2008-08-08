## General shortcuts


# nice little command line growl utility
alias growl='growl -H localhost -m'
alias ding='growl "Done!"'

# edit this file!
alias profile='$EDITOR ~/.profile -w; sauce'
alias sauce='source ~/.profile'

# system monitoring
alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes
alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes

# Lap warmer
alias warm='nice -n 20 ruby -e "loop {}" &'

# general shortcuts
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
# listing files - I usually end up using 'l' since its quick and easy
alias l='ls -alh'
alias lt='l -t | less'

#copy the working directory into the clipboard
alias cwd='pwd | pbcopy'


## App specific shortcuts


# The essential git commands.
alias gs='git status' #I use this obsessively, I feel blind without it
alias g='git'
alias gb='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | $EDITOR'
alias ga='git add'
alias gl='git log'

# svn helpers
# after using the wonderful git status, I grew tired of the clutter of svn externals
alias st='svn status | grep -v "^X      " | grep -v "^Performing status on external item"'

#turns a directory of pngs into a single, beautiful avi
alias pngs_to_avi='mencoder mf://*.png -mf fps=30 -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=2000 -oac copy -o'

# ANTLR
alias antlr='java org.antlr.Tool'
alias gunit='java org.antlr.gunit.Interp'

# I used to forget where the ruby gems directory was, now I just forget about this
alias gems='cd /usr/local/lib/ruby/gems/1.8/gems/'

# Google App Engine
alias appcfg='python2.5 `which appcfg.py`'
alias dev_appserver='python2.5 `which dev_appserver.py`'

# an old MUD I'm kind of fond of
alias sdmud='runLyntin --readline on -c ~/projects/sdmud/config.ini'






## Basic terminal setup


# This is the 20th century after all, use unicode
export LC_CTYPE=en_US.UTF-8

# colors!
export CLICOLOR=1
# export TERM=xterm-256color

# history options
export HISTCONTROL=erasedups # don't store duplicate lines
export HISTSIZE=10000 #remember 10k unique lines
shopt -s histappend


#now execute machine-specific profile
source ~/`hostname`.sh