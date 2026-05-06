# TMUX - Terminal Multiplexer

## Attach to an existing session
tmux attach

## Prefix
Default is CTRL + b. I have it mapped to CTRL + a

## Update configurations / set flags 
prefix + :

## Refresh the session
tmux source-file ~/.tmux.conf
tmux refresh-client -S

## Manually change window size
:resize-pane -R 5
-R -D -U -L

## Windows
Create Window: prefix + c
Switch Window: prefix + n / p

## Panes
Create vertical split: prefix + %
Create Horizontal split: prefix + "

### Move between panes
prefix + arrow keys

## Initial Configurations
### Enable Mouse Usage
:set -g mouse on

### Plugins
Save and restore panes and sessions
:set -g @plugin 'tmux-plugins/tmux-resurrect'
:set -g @plugin 'tmux-plugins/tmux-continuum'

### Config file
~/.tmux.conf

set -g @continuum-restore 'on'
set -g mouse on 

