#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export TERM="xterm-256color"
export PATH=$PATH:~/Downloads/fonts-rofi-fontawesome
alias ls='ls --color=auto'

#Custom aliases
alias files="clifm"
alias wipeorphans="sudo pacman -Rs $(pacman -Qtdq)"
alias mic="noisetorch" 
alias clear="clear && source ~/.bashrc"


PS1='\[\033[31m\] \u@arch: [\W] \$ \[\033[37m\]'
shopt -s checkwinsize

echo ""
neofetch --colors 8 8 8 1 6 8 --source ~/.config/ascii/ascii-dragon --set-colors 8 8 8 8 8 8 #--ascii_distro blackarch 
#pfetch
