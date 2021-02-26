Here are the configuration files I use:

bashrc
------

- symlink to `~/.bashrc` (my `.bash_profile` sources `.bashrc` by default)
- activate rvm if present
- show the current git branch if `pwd` is part of a git project
- colorize `ls` if available
- set up the `rename-window` alias if `xdotool` is installed
- tell `less` to use colors (`$LESS` is already set in Slackware installs, will break e.g. `git diff`)
- `tput smkx` to enable terminal numpad (required for proper `DEL` operation in `st`)

Note: depending on your system configuration, you may need to account for PS1 when using `su` or `sudo`. I've had to deal with a persistent PS1 with CentOS and Slackware. A quick solution is to provide a `.bash_profile` and `.bashrc` for root that reassigns PS1.

root_bashrc
-----------

As mentioned above, this is for Slackware, etc. where PS1 is persistent when you `su`. Drop it in `~root/.bashrc`. Probably shouldn't symlink root's `bashrc` into a git project!

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
- Combo + r to reload config
- Set TERM to 'tmux' (supported in 2.1+)

Default (Linux).sublime-keymap
------------------------------

- symlink to `~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap`
- `CTRL + T` open in project (was: transpose)
- `SHIFT + INS` paste from selection (default X11 behavior)
- `CTRL + ALT + UP` and `CTRL + ALT + DOWN` multi-cursor selection

Preferences.sublime-settings
----------------------------

User preferences for Sublime Text 3:

- symlink to `~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
- set font to Terminus 12pt
- set DPI scaling to 1.2 for 4K display

i3status.conf
-------------

- symlink to `~/.i3status.conf`
- provides eth0 IP, ipv6, sda free space, load, localtime

st patches
----------

- patch config.def.h for Terminus font

irssi
-----

Currently this directory contains themes for irssi.
