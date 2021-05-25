PROMPT='%F{1}  %F{2}%B%~%b%f '

SU="doas"
XB="xbps"
V="nvim"

alias c="clear"
alias xu="$SU $XB-install -Suv"
alias xr="$SU $XB-remove"
alias xq="$SU $XB-query"
alias zz="$SU zzz"
alias start="$SU sv start"
alias stop="$SU sv stop"
alias restart="$SU sv restart"
alias v="$V"
alias dv="$SU $V"
alias .xrs="$V .Xresources"
alias .zsh="$V .zshrc"
alias .xin="$V .xinitrc"
alias .picom="$V ~/.config/picom/picom.conf"
alias ls="exa --icons"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpatch=(/usr/share/zsh/site-functions/ $fpatch)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

