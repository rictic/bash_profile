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

# disk usage
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

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

#did you know that the Mac doesn't come with a tac command?  Scandalous!
alias tac="sed '1!G;h;\$!d'"

#generate a random pass
alias randpass="openssl rand -base64 12"

#bash only stuff
if [ "$SHELL" = "/bin/bash" ]; then
  #magical new tab to last directory trick
  #source: http://gist.github.com/132456
  function pathed_cd () {
      if [ "$1" == "" ]; then
          cd
      else
          cd "$1"
      fi
      pwd > ~/.cdpath
  }
  alias cd="pathed_cd"
 
  if [ -f ~/.cdpath ]; then
    cd "$(cat ~/.cdpath)"
  fi
  
  
  # history options
  export HISTCONTROL=erasedups # don't store duplicate lines
  export HISTSIZE=100000 #remember 100k unique lines
  shopt -s histappend
  
  
  #include the current git branch in the prompt (source http://gist.github.com/168835 )
  #I added a bright yellow color if on the master branch
  export PS1="\\W:\[\033[\$(get-current-color)\]\$(get-current-branch)\\[\033[0m\]\$ "
fi

## App specific shortcuts


# The essential git commands.
alias gs='git status' #I use this obsessively, I feel blind without it
alias g='git'
alias gb='git checkout -b'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | $EDITOR'
alias ga='git add'
alias gl='git log'

# svn helpers
# after using the wonderful git status, I grew tired of the clutter of svn externals
alias st='svn status | grep -v "^X      " | grep -v "^Performing status on external item"'

#turns a directory of pngs into a single, beautiful avi
alias pngs_to_avi='mencoder mf://*.png -mf fps=30 -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=5000 -oac copy -o'

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


alias nt='pwd | pbcopy'

alias rhino="java org.mozilla.javascript.tools.shell.Main"
alias jslint="rhino ~/bin/jslint.js"

## Basic terminal setup


# This is the 20th century after all, use unicode
export LC_CTYPE=en_US.UTF-8

# colors!
export CLICOLOR=1
# export TERM=xterm-256color



#metaweb freeciv server
alias metaciv="civclient -a -s 173.45.227.233"

alias get-current-branch="git branch 2>/dev/null | grep '^*' | colrm 1 2"
alias get-current-color="if [[ \$(get-current-branch) == \"master\" ]] ; then echo \"1;33m\" ; else echo \"0m\" ; fi"

#now execute machine-specific profile
source ~/`hostname`.sh
##
# Your previous /Users/peter/.profile file was backed up as /Users/peter/.profile.macports-saved_2009-09-17_at_18:02:00
##

PATH=$PATH:$HOME/bin
export MANPATH=$MANPATH:$HOME/man

# MacPorts Installer addition on 2009-09-17_at_18:02:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for MacPython 2.6
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# export NARWHAL_ENGINE=jsc

