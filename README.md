# NVIM

Install this:

https://github.com/junegunn/vim-plug

## Specify the NVIM source file in ~/.config/nvim/init.vim using:
source ~/PATH/config.vim

## Install python for nivim
pip install --user neovim

# TMUX

brew install tmux  

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  

## Specify the TMUX source file in ~/.tmux.conf using:
source ~/PATH/tmux.conf

### TMUX commands
<sub>The default prefix is CTRL + b </sub>

Key binding (Prefix+) | Description
---------------------|--------------
a | Begining of the line
r | Reload config file
&#9866; | Horizontal split
&#9474; | Vertical split
h | Left pane
j | Bottom pane
k | Top pane
l | Right pane
→ | Right pane
← | Left pane
↓ | Bottom pane
↑ | Top pane
C ← | Resize to left
C → | Resize to right
C ↑ | Resize to top
C ↓ | Resize to down
&#43; | Zoom in/out panel
I | Sync window panes
c | New window
n | Next window
S → | Next window
p | Previous window
S ← | Previous window
0-9 | Selet window by index
C a | Last used window
v | Copy mode
y | Copy selection
Enter | Copy selection

<sub>
  Taken from  <a href="https://mbobin.me/tmux/2018/10/06/tmux-configs.html">https://mbobin.me/tmux/2018/10/06/tmux-configs.html</a>
</sub>

# TMUXINATOR
https://thoughtbot.com/blog/templating-tmux-with-tmuxinator

## Install
brew tap nexeck/homebrew-tmuxinator

brew install nexeck/homebrew-tmuxinator/tmuxinator

## Environment variables (~/.bash_profile => For bash)

export EDITOR=nvim  
export NG_WORKDIR="path"  
export BACK_WORKDIR="path"  
export DOCKR_WORKDIR="path"  
export TX_SPACES="path"  
export NG_RAISE_FE="path"  
export SNX_DIR="path"  

alias tx='tmuxcinator'

## Environment variables (~/.config/fish/config.fish => For fish shell)

set NG_WORKDIR "path"  
set BACK_WORKDIR "path"  
set DOCKR_WORKDIR "path"  
set TX_SPACES "path"  
set NG_RAISE_FE "path"  
set SNX_DIR "path" 

### Start space from a specific path
tmuxinator start -p /$TX_SPACES/my_config.yml
