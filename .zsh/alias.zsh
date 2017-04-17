alias la='ls -lah --color=auto'
alias ls='ls --color=auto'

alias o='rifle'

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

#git
alias cgr='cd $(git rev-parse --show-toplevel || echo ".")'

#clipboard
alias xclip="xclip -selection c"

# fuzzy find recently used dirs
alias j='cd $(_z -l 2>&1 | fzf -s --tac | sed "s/[0-9,.]* *//")'
