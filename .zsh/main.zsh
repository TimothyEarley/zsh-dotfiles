# dir colours
eval $( dircolors -b ~/.zsh/data/dircolors.256dark )

# Autocomplete color (muted gray)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=11'

# Path colour
# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=39'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=cyan'

# Comment colour
ZSH_HIGHLIGHT_STYLES[comment]='fg=white'

# Remove user prompt for default user
DEFAULT_USER='timmy'

# Editor
export EDITOR="/bin/micro"

# Allow to cd into folders from home dir from anywhere
export CDPATH=$CDPATH:~

# completions for hidden files
# compinit
_comp_options+=(globdots)

# if littler is installed, disable the shell builtin r
if [ -e /usr/bin/r ]; then
	disable r
fi

# allow comments in interactive
setopt interactivecomments

# auto cd
setopt auto_cd

# expand in prompt
setopt prompt_subst

# disable . and .. in tab completion
zstyle ':completion:*' special-dirs false