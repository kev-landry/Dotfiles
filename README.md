# Personal setup dotfiles

### Purpose

In order to sync my env accross multiple computers or when i format one.

Everything is in one directory called Dotfiles in ~/. The idea is to bring together multiple dot files scatered around .config or ~/.
For this i use *stow* to symlink into Dotfiles directory.

- My OS is ubuntu 22
- Wezterm is the terminal used (written is Rust)
- Hyperjs is the terminal i used until some time ago
- Zeillij is the multiplexer (love its layout/tab/pane management)
- Gitui as a terminal git ui layout (written ins Rust)
- Phpstorm as ide 
- Neovim might be my main code editor soon to be a 10x developper ^_^


## Zellij

[Download the binazy](https://zellij.dev/)

Unpack it  
`tar xzvf zellij-x86_64-unknown-linux-musl.tar.gz`

Then install the binary in your /bin  
`sudo install zellij /usr/local/bin`

```
mkdir ~./config/zellij
cd Dotfiles
stow ~/.config/zellij zelli
```
## Gitui

Install cargo
`curl https://sh.rustup.rs -sSf | sh`

Install gitui  
`cargo install gitui`

Symlink  
`cd Dotfiles && 
stow -t ~/.config/gitui gitui`

## Btop

Download  
`wget https://github.com/aristocratos/btop/releases/download/v1.2.13/btop-x86_64-linux-musl.tbz`  
Unzip  
`tar -xjf btop-x86_64-linux-musl.tbz`  
Install  
`cd btop && sudo make install`  
Clean files  
`rm -rf btop-x86_64-linux-musl.tbz btop`
Symlink
` cd Dotfiles && stow -t ~./config/btop btop`


## Alacrity 

[Follow instructions from Alacritty repo](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

Install  all dependencies needed  
`apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3`

Clone repo  
```
git clone https://github.com/alacritty/alacritty.git 
cd alacritty
```
Once the zhole installation is done try to run alacritty to check if the set up is OK

## HACK FONT - install

Go to https://www.nerdfonts.com/font-downloads to check if link is the lastest release version !

```sh
wget -P ~/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip && \
cd ~/.local/share && \
mkdir fonts && \
cd fonts && \
mv ~/Downloads/Hack.zip . && \
unzip Hack.zip && \
rm -rf Hack.zip
```

Close and re open Alacritty terminal.


Check if Hack Nerd Font have been installed correctly on Alacritty  
```sh
fc-list | grep -i "Hack"
```

