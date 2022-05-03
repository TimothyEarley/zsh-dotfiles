#! bin/zsh
export ANDROID_HOME=${HOME}/Android/Sdk
export GRAALVM_HOME=/usr/lib/jvm/java-11-graalvm/

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
	# CUDA
	# /opt/cuda/bin
	# Zplug failed
	~/.zplug/bin
	# Perl6
	/usr/share/perl6/site/bin
	/usr/share/perl6/vendor/bin
	# kubectl plugins
	~/.kube/plugins
	# Install location for stack (Haskell)
	~/.local/bin
)

for p in $paths
do
	export PATH=$PATH:$p
done

