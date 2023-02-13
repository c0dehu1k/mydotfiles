# BUild Dependencies
sudo apt install -y build-essential
sudo apt install ansible cargo lua5.4 luarocks -y
sudo apt install -y libgflags-dev libgoogle-glog-dev liblmdb-dev
sudo apt install libgpgme-dev -y
sudo apt install libsasl2-dev -y
sudo apt install -y libidn12-dev
sudo apt install libssl-dev -y
sudo apt install nodejs npm -y 
sudo apt install libolm-dev -y 
sudo apt install notify-send -y
# newsboat dependencies
sudo apt install libncursesw5-dev ncurses-term debhelper libxml2-dev libstfl-dev 
sudo apt install libsqlite3-dev perl pkg-config libcurl4-gnutls-dev libjson-c-dev asciidoc 
sudo apt install libxml2-utils xsltproc docbook-xml docbook-xsl bc cargo gettext  asciidoctor

# Terminal Utilities
sudo apt install zsh tmux ripgrep htop -y 
sudo apt install rtorrent kitty urlview -y

#Browser
sudo apt install qutebrowser -y

# Brave Browser
cd /tmp
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# Media Player
sudo apt install -y libncursesw5-dev libpulse-dev libasound2-dev libroar-dev libao-dev libjack-dev libsamplerate0-dev libcdio-dev libcdio-cdda-dev 
sudo apt install -y libcddb2-dev libcue-dev libflac-dev libvorbis-dev libmpcdec-dev libwavpack-dev libmad0-dev libavformat-dev libavcodec-dev
sudo apt install -y libfaad-dev libmp4v2-dev libmodplug-dev libmikmod2-dev
sudo apt install cmus mpv vlc -y

# i3 Window Manager
sudo apt install i3-wm dunst i3lock i3status suckless-tools -y
sudo apt install brightnessctl -y
sudo apt install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior -y
sudo apt install nitrogen nnn xclip -y

# Python
sudo apt install python3-pip -y
sudo pip3 install black flake8 ipython bpython

# nvim 
sudo apt install neovim -y

#neomutt
sudo apt install neomutt msmtp mpop isync abook lynx w3m libidn11-dev -y

# Other utils
sudo apt install mupdf  gtypist -y
sudo apt install meld -y  # Diff tool

# Twitter clients
sudo apt-get install libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev
sudo pip install rainbowstream

# Go installation 
curl https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.1.linux-amd64.tar.gz

# Docker 
# Install lazydocker - TUI to manage docker

# Kubernetes
# Install K9s - TUI to see K8s cluster

# Linux Container 
sudo snap install lxd

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
sudo apt install -y libgflags-dev libgoogle-glog-dev liblmdb-dev


# Usefull and Better command's
sudo apt install bat -y  # replaces cat 
sudo apt install duf -y # Better than df 
sudo apt install jq -y  # Display jsons better
sudo apt install audacity # MP3 cutter app
sudo apt install speedtest-cli # command line speed test utility
sudo apt install gnome-disk-utility # Disk format utility
sudo snap install notion-snap # Notes making app

# Final update and clean ups
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove

chmod -R u=rw,u+X,go= ~/.gnupg/

# Useful Installations #########
# gitui - tui for git, can be plugged to neovim
# slidev - Presentation for developers, via command line
# helix Editor - Super powerful and lot of things are pre-configured
################################

# Language Servers for Coding  ####
# pip install python-lsp-server[all]
# sudo npm i -g bash-language-server
# sudo npm i -g pylsp
# sudo npm i -g vscode-langservers-extracted
# sudo npm i -g yaml-language-server
# sudo npm i -g typescript-language-server
# sudo npm i -g black prettier stylua tree-sitter
