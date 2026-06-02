# TMUX - Terminal Multiplexer

## Managing Sessions
Attach to an existing session
> tmux attach

Detach from session and exit tmux while leaving the session running::
> prefix + d

## Prefix
Default is CTRL + b. 
I like to have it mapped to CTRL + a

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
Close Window: prefix + &

## Panes
Create vertical split: prefix + %
Create Horizontal split: prefix + "

### Move between panes
prefix + arrow keys

## Maintenance Commands
See all configurations running in memory
> tmux show-options -g 

Reload the configuration
> tmux source-file ~/.tmux.conf

## Initial Configurations
### Enable Mouse Usage
:set -g mouse on

### Plugins
Tmux Plugin Manager
> git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
> vi ~/.tmux.conf (Add the follow lines)
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Initilize TMUX plugin manager. This needs to always be at the bottom of the file
run '~/.tmux/plugins/tpm/tpm'
<< EOL 

To add new plugins, add the plugin line to the ~/.tmux.conf and then run prefix + I to install

Save and restore panes and sessions
:set -g @plugin 'tmux-plugins/tmux-resurrect'
:set -g @plugin 'tmux-plugins/tmux-continuum'

### Config file
~/.tmux.conf

set -g @continuum-restore 'on'
set -g mouse on 

