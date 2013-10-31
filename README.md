Here are the configuration files I use:

bashrc
------

- symlink to `~/.bashrc` (my `.bash_profile` sources `.bashrc` by default)
- activate rvm if present
- show the current git branch if `pwd` is part of a git project

Note: depending on your system configuration, you may need to account for PS1 when using `su` or `sudo`. I've had to deal with a persistent PS1 with CentOS and Slackware. A quick solution is to provide a `.bash_profile` and `.bashrc` for root that reassigns PS1.

fluxbox_menu
------------

- symlink to `~/.fluxbox/menu`

vimrc
-----

- symlink to `~/.vimrc`
- syntax highlighting
- elflord color scheme
- tab stop of 2, expand tabs
- allow vertical column navigation through wrapped lines

xfce4_terminalrc
----------------

- symlink to `~/.config/xfce4/terminal/terminalrc`
- turn off close "X" icon in tabs

tmux.conf
---------

- symlink to `~/.tmux.conf`
- turn off automatic window title updates (lessens CPU load)
