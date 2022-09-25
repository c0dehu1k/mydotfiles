# BUild Dependencies
sudo apt install build-essential -y

# Terminal Utilities
sudo apt install zsh tmux ripgrep -y 

#Browser
sudo apt install qutebrowser -y

# Media Player
sudo apt install -y libncursesw5-dev libpulse-dev libasound2-dev libroar-dev libao-dev libjack-dev libsamplerate0-dev libcdio-dev libcdio-cdda-dev 
sudo apt install -y libcddb2-dev libcue-dev libflac-dev libvorbis-dev libmpcdec-dev libwavpack-dev libmad0-dev libavformat-dev libavcodec-dev
sudo apt install -y libfaad-dev libmp4v2-dev libmodplug-dev libmikmod2-dev
sudo apt install cmus mpv vlc -y

# i3 Window Manager
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y
sudo apt install brightnessctl -y
sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior
sudo apt install nitrogen nnn xclip

# Python
sudo apt install python3-pip
sudo pip3 install black flake8 ipython bpython

# nvim 
sudo apt install neovim

# Other utils
sudo apt install mupdf


# Go installation 

# Docker 

# Kubernetes

# Final update and clean ups
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove
