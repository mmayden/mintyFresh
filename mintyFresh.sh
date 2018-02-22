#!/bin/bash
#MintyFresh

#update/upgrade
echo "Initiating Minty Fresh..."
apt-get update && apt-get -y upgrade

#install vim
apt-get install vim -y

#create bin folder @home dir and go to it
cd /home/xifu/ && mkdir bin && cd bin

#create vim config file (.vimrc)
cat > .vimrc <<EOL
"vim configuration file

" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" display settings
set encoding=utf-8 " encoding used for displaying file
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode

" edit settings
set backspace=indent,eol,start " backspacing over everything in insert mode
set expandtab " fill tabs with spaces
set nojoinspaces " no extra space after '.' when joining lines
set shiftwidth=4 " set indentation depth to 4 columns
set softtabstop=4 " backspacing over 4 spaces like over tabs
set tabstop=4 " set tabulator length to 4 columns
set textwidth=80 " wrap lines automatically at 80th column

"search settings
set hlsearch " highlight search results
set ignorecase " do case insensitive search...

"file type specific settings
filetype on " enable file type detection
filetype indent on " automatically indent code


set background=dark " dark background for console
syntax enable " enable syntax highlighting
EOL

cd /home/$USER/Pictures && wget https://i.pinimg.com/originals/75/5b/4d/755b4d8c9c392ccd849bf90182ed2be2.jpg

###Changing desktop background doesn't work yet. It worked once and then I deleted
#any of the newly created files so I could make a quick change to the line.
#Something happened and now every time I've tried it its not working
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/Pictures/755b4d8c9c392ccd849bf90182ed2be2.jpg

#install/setup git+github acc
add-apt-repository -y ppa:git-core/ppa # apt update; apt install git
apt-get update && upgrade -y
apt-get install -y git

git config --global user.name "username"

git config --global user.email "email"
