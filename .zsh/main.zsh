# dir colours
eval $( dircolors -b ~/.zsh/data/dircolors.256dark )

# Autocomplete color (muted gray)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=11'

# Path colour
# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=39'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=cyan'


# SDKMAN
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

# Remove user prompt for default user
DEFAULT_USER='timmy'
