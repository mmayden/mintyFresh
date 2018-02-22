#!/usr/bin/env bash
#MintyFresh

# Update/upgrade
echo "Initiating Minty Fresh..."
apt-get update && apt-get -y upgrade

# Install vim
apt-get install vim -y

# Create bin folder @home dir
mkdir -p "$HOME/bin"

# Create vim config file (.vimrc)
cp ./vimrc "$HOME/.vimrc"
chmod 0600 "$HOME/.vimrc"

# Copy in background image
bg_file="background.jpg"
bg_location="$HOME/Pictures/$bg_file"
cp "$bg_file" "$bg_location"

###Changing desktop background doesn't work yet. It worked once and then I deleted
#any of the newly created files so I could make a quick change to the line.
#Something happened and now every time I've tried it its not working
gsettings set org.gnome.desktop.background picture-uri "file://$bg_location"

# Install/setup git+github acc
add-apt-repository -y ppa:git-core/ppa # apt update; apt install git
apt-get update && upgrade -y
apt-get install -y git

cp ./gitconfig "$HOME/.gitconfig"
chmod 0600 "$HOME/.gitconfig"
