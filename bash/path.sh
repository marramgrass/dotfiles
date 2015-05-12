add_to_path ~/.dotfiles/bin
add_to_path ~/bin

# Android dev
add_to_path ~/android-sdk-macosx/tools
add_to_path ~/android-sdk-macosx/platform-tools

# PEAR
add_to_path /usr/local/pear/bin

# Homebrew installations get priority
path_prepend /usr/local/bin
path_prepend /usr/local/sbin

# go
add_to_path /usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
add_to_path $GOPATH

