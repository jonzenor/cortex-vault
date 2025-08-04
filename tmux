# TMUX - Terminal Multiplexer

## Attach to an existing session
tmux attach

## Refresh the session
tmux source-file ~/.tmux.conf
tmux refresh-client -S

## Manually change window size
:resize-pane -R 5
-R -D -U -L
