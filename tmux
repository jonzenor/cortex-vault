# TMUX - Terminal Multiplexer

## Attach to an existing session
tmux attach

## Prefix
Default is CTRL + b, I think? I have it mapped to CTRL + a

## Refresh the session
tmux source-file ~/.tmux.conf
tmux refresh-client -S

## Manually change window size
:resize-pane -R 5
-R -D -U -L

# Windows
Create Window: prefix + c
Switch Window: prefix + n

# Panes
Create vertical split: prefix + %
Create Horizontal split: prefix + "

