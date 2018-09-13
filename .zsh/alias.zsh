#alias la='ls -lah --color=auto'
#alias ls='ls --color=auto'

alias la='lai-go'
#alias ls='lsi-go'

alias o='rifle'

# k is nice, but kinda broken (LS_COLORS, \ in directory messes things up)
#alias la='k -Ah'

# fuck fixes the last command

#eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
# eval "$(thefuck --alias FUCK)"
#alias fu='fuck'


# ANTLR
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

# rm to trash
alias rm='trash-put'

# cp progress
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

#git
# grt is the same
#alias cgr='cd $(git rev-parse --show-toplevel || echo ".")'


#clipboard
alias xclip="xclip -selection c"

# fuzzy find recently used dirs
alias j='cd "$( _z -l 2>&1 | fzf -s --tac | sed ''"''s/[0-9,.]* *//''"'' )"'
# 'jump' back to previous directory
alias jb='cd -'

# add color to watch
alias watch='watch --color '

# add colour to diff
alias diff='diff --color=auto '

# google calendar with max width
alias gcal='gcalcli -w $(( $(tput cols)/7 - 1))'

# wunderlist
alias todo='wunderline'

# close session and poweroff
# also quit spotify because it fails to remember last playback position otherwise
alias off='pkill spotify; cinnamon-session-quit --logout --no-prompt; poweroff'

# The show methods needs access to aliases, so source it
alias show='source ~/.scripts/show'

# Suspend session (and pause music, turn off screen)
alias suspend='playerctl pause; cinnamon-screensaver-command -l; xset dpms force off'

# SVN
alias srt='cd $(svn info --show-item=wc-root)'

# Remove removed  files from svn
# alias cleanSVN='svn status | grep "^!" | awk "{print $2}" | xargs svn delete'
