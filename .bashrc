#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
#
#!/bin/bash
[ -z "$PS1" ] && return

# ~/.local/share/fonts/
# https://github.com/powerline/fonts

color_black_black='\[\e[0;30m\]'
color_black_red='\[\e[0;31m\]'
color_black_green='\[\e[0;32m\]'
color_black_yellow='\[\e[0;33m\]'
color_black_blue='\[\e[0;34m\]'
color_black_magenta='\[\e[0;35m\]'
color_black_cyan='\[\e[0;36m\]'
color_black_white='\[\e[0;37m\]'

color_red_black='\[\e[30;41m\]'
color_red_red='\[\e[31;41m\]'
color_red_green='\[\e[32;41m\]'
color_red_yellow='\[\e[33;41m\]'
color_red_blue='\[\e[34;41m\]'
color_red_magenta='\[\e[35;41m\]'
color_red_cyan='\[\e[36;41m\]'
color_red_white='\[\e[37;41m\]'

color_green_black='\[\e[30;42m\]'
color_green_red='\[\e[31;42m\]'
color_green_green='\[\e[32;42m\]'
color_green_yellow='\[\e[33;42m\]'
color_green_blue='\[\e[34;42m\]'
color_green_magenta='\[\e[35;42m\]'
color_green_cyan='\[\e[36;42m\]'
color_green_white='\[\e[37;42m\]'

color_yellow_black='\[\e[30;43m\]'
color_yellow_red='\[\e[31;43m\]'
color_yellow_green='\[\e[32;43m\]'
color_yellow_yellow='\[\e[33;43m\]'
color_yellow_blue='\[\e[34;43m\]'
color_yellow_magenta='\[\e[35;43m\]'
color_yellow_cyan='\[\e[36;43m\]'
color_yellow_white='\[\e[37;43m\]'

color_blue_black='\[\e[30;44m\]'
color_blue_red='\[\e[31;44m\]'
color_blue_green='\[\e[32;44m\]'
color_blue_yellow='\[\e[33;44m\]'
color_blue_blue='\[\e[34;44m\]'
color_blue_magenta='\[\e[35;44m\]'
color_blue_cyan='\[\e[36;44m\]'
color_blue_white='\[\e[37;44m\]'

color_magenta_black='\[\e[30;45m\]'
color_magenta_red='\[\e[31;45m\]'
color_magenta_green='\[\e[32;45m\]'
color_magenta_yellow='\[\e[33;45m\]'
color_magenta_blue='\[\e[34;45m\]'
color_magenta_magenta='\[\e[35;45m\]'
color_magenta_cyan='\[\e[36;45m\]'
color_magenta_white='\[\e[37;45m\]'

color_cyan_black='\[\e[30;46m\]'
color_cyan_red='\[\e[31;46m\]'
color_cyan_green='\[\e[32;46m\]'
color_cyan_yellow='\[\e[33;46m\]'
color_cyan_blue='\[\e[34;46m\]'
color_cyan_magenta='\[\e[35;46m\]'
color_cyan_cyan='\[\e[36;46m\]'
color_cyan_white='\[\e[37;46m\]'

color_grey_black='\[\e[30;47m\]'
color_grey_red='\[\e[31;47m\]'
color_grey_green='\[\e[32;47m\]'
color_grey_yellow='\[\e[33;47m\]'
color_grey_blue='\[\e[34;47m\]'
color_grey_magenta='\[\e[35;47m\]'
color_grey_cyan='\[\e[36;47m\]'
color_grey_white='\[\e[37;47m\]'

color_reset='\[\033[0m\]'

#separator=''
separator=''
#separator='#'

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000
##my code
code() {
    if [ -z "$1" ]; then
        echo "Usage: code <filename>"
    else
        mkdir "$1" && cd "$1" && touch "$1.cpp" "$1-output" "$1-input" && vim "$1.cpp"
    fi
}

alias ls='ls --color'
alias ll='ls -lah'

PS1="$color_magenta_black\u$color_red_magenta$separator$color_red_black\h$color_yellow_red$separator$color_yellow_black\W$color_black_yellow$separator$color_reset"
alias swayconf='nvim ~/.config/sway/config'
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export ELECTRON_OZONE_PLATFORM_HINT=wayland
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="less -R"

##export RANGER_LOAD_DEFAULT_RC=false
export XDG_CURRENT_DESKTOP="SWAY"

alias remnote='cd ~/Downloads/ && ./remnote.AppImage'
alias celeste='cd ~/Downloads/Celeste-jc141/ && ./start.n.sh'
alias cfcontest='cd ~/codeforce/contest/ && rm -rf *' 
alias tt='tt -showwpm'
alias cfpractice='cd ~/codeforce/practice'
alias selflearncp='cd ~/self_learn_cp/u_kn0w_wh0/'
set -o vi
bind '"jj": "\e"'

##syntax coloring for command
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias tree='tree -C'
##end
man() {
LESS_TERMCAP_md=$'\e[01;31m' \
LESS_TERMCAP_me=$'\e[0m' \
LESS_TERMCAP_us=$'\e[01;32m' \
LESS_TERMCAP_ue=$'\e[0m' \
LESS_TERMCAP_so=$'\e[45;93m' \
LESS_TERMCAP_se=$'\e[0m' \
command man "$@"
}


pfetch

