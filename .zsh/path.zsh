#! bin/zsh
export ANDROID_HOME=${HOME}/Android/Sdk

paths=(
	# dot(file) commands
	~/.dotfiles/bin/
	# Android
	$ANDROID_HOME/tools
	$ANDROID_HOME/platform-tools
	# scripts
	~/.scripts/
	# ruby gems
	$(ruby -e 'print Gem.user_dir')/bin
)

for p in $paths
do
	export PATH=$PATH:$p
done

