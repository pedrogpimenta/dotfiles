# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-resurrect'

# Initialize TMUX plugin manager` (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'

# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Fix for Vim colors
set -g default-terminal "screen-256color"

