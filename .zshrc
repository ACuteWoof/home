source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# History
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# Common aliases
alias cls="clear"
# alias icat="kitty +kitten icat"
alias :q="exit"
alias :wq="exit"
alias q="exit"
alias vim="nvim"
alias nano="nvim"
alias vi="nvim"
alias v="nvim"
alias lss="exa"
alias ls="exa -lao"
alias l="exa -lao --git --git-repos"
alias la="l"
alias lf="lfub -command 'set sortby btime; set info btime'"
alias lynx="lynx -vikeys"

function rmd {
	pandoc $1 -t pdf | zathura -
}

# variables
export VISUAL=nvim
export EDITOR=$VISUAL
export BROWSER=qutebrowser
export PAGER=less
export MANPAGER="nvim +Man!"
export GPG_TTY=$(tty)
export BIBFILE="~/basemhnt/latex/bibli.bib"
export MUSIC_DIR="$HOME/music"
export PATH="$PATH:/home/acutewoof/.local/bin:/home/acutewoof/.cargo/bin"

# latex bibliography
alias editbib="vim $BIBFILE"

### completions ###
autoload -U compinit
compinit
eval "$(starship init zsh)"
source <(starship completions zsh)
compdef _starship starship

# vi mode
bindkey -v

# zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

sed "s/sudo poweroff//" -i "$HOME/.histfile" 
setopt CORRECT
