# MAC

- Install from version control
  ```bash
    git clone https://github.com/tmux/tmux.git
    cd tmux
    sh autogen.sh
    ./configure && make
  ```
- Create config file if not exist : `touch ~/.tmux.conf`
- Add configuration to `~/.tmux.conf`
  ```bash
    set -g status-style fg=#7c3aed,bg=#0f172a
    set -g pane-border-style fg=#4c1d95
    set -g pane-active-border-style "bg=default fg=#7c3aed"
  ```
  
# References
- [Tmux Installation](https://github.com/tmux/tmux#installation)
