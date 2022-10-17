# BUild Dependencies
sudo apt install build-essential -y
sudo apt install ansible cargo lua5.4 luarocks -y

# Terminal Utilities
sudo apt install zsh tmux ripgrep htop -y 
sudo apt install rtorrent alacritty -y

#Browser
sudo apt install qutebrowser -y

# Brave Browser
cd /tmp
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Media Player
sudo apt install -y libncursesw5-dev libpulse-dev libasound2-dev libroar-dev libao-dev libjack-dev libsamplerate0-dev libcdio-dev libcdio-cdda-dev 
sudo apt install -y libcddb2-dev libcue-dev libflac-dev libvorbis-dev libmpcdec-dev libwavpack-dev libmad0-dev libavformat-dev libavcodec-dev
sudo apt install -y libfaad-dev libmp4v2-dev libmodplug-dev libmikmod2-dev
sudo apt install cmus mpv vlc -y

# i3 Window Manager
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y
sudo apt install brightnessctl -y
sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior
sudo apt install nitrogen nnn xclip -y

# Python
sudo apt install python3-pip
sudo pip3 install black flake8 ipython bpython

# nvim 
sudo apt install neovim -y

#neomutt
sudo apt install neomutt msmtp mpop isync abook lynx libidn11-dev -y

# Other utils
sudo apt install mupdf  gtypist -y


# Go installation 
curl https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.1.linux-amd64.tar.gz

# Docker 

# Kubernetes

# Kind 
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.15.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Kubectl Command line
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Terminal Games
sudo apt install nudoku -y  # command line Sudoku
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

# Final update and clean ups
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove

chmod -R u=rw,u+X,go= ~/.gnupg/
