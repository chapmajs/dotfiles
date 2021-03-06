#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias `ls` for color mode
if ls --color=auto / >/dev/null 2>&1
then
  alias ls='ls --color=auto' # GNU ls
else
  alias ls='ls -G' # BSD ls
fi

which xdotool >/dev/null 2>&1
if [ "$?" = "0" ]
then
	alias rename-window='xdotool selectwindow set_window --name'
else
	alias rename-window='echo "xdotool not found"'
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PS1="[\u@\h \W] \$(parse_git_branch)\$ "

# Tell `less` to use colors, have verbose prompt
LESS='-M -R'

# Fix delete for `bash`, `irssi`, et c. in `st`
tput smkx
