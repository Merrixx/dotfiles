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
alias mic="easyeffects" 
alias pipe="bash ~/.config/pipes/pipes.sh/pipes.sh"

PS1='\[\033[31m\] \u@arch: [\W] \$ \[\033[37m\]'
shopt -s checkwinsize

echo ""
neofetch --colors 1 1 1 9 7 7 
