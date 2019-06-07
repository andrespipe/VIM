# NVIM

## Specify the NVIM source file in ~/.config/nvim/init.vim using:
source ~/PATH/config.vim

# TMUX

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

## Environment variables ~/.bash_profile

export EDITOR=nvim  
export NG_WORKDIR="path"  
export BACK_WORKDIR="path"  
export DOCKR_WORKDIR="path" 
export TX_SPACES="path"

alias tx='tmuxcinator'

### Start space from a specific path
tmuxinator start -p /$TX_SPACES/my_config.yml
