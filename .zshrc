# for profiling startup, use "zprof" to see results
# zmodload zsh/zprof

export TERM="xterm-256color"

# load all config files in ~/.zsh
for config_file (${HOME}/.zsh/*.zsh); do
#	echo "Loading $config_file"
#	time ( source $config_file )
	source $config_file
done
