alias la='ls -la --color=auto'
alias ls='ls -l --color=auto'

# k is nice, but kinda broken (LS_COLORS, \ in directory messes things up)
#alias la='k -Ah'

# fuck fixes the last command

eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
# eval "$(thefuck --alias FUCK)"
alias fu='fuck'


# ANTLR
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.runtime.misc.TestRig'


# rm to trash
alias rm='trash-put'

# cp progress
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

