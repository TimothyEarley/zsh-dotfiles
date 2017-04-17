# load all config files in ~/.zsh
for config_file (${HOME}/.zsh/*.zsh); do
#	echo "Loading $config_file"
	source $config_file
done
