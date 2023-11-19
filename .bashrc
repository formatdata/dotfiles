# .bashrc

export EDITOR='nvim'
export BROWSER='Firefox'
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#ffffff,bg:#161616,hl:#08bdba --color=fg+:#f2f4f8,bg+:#262626,hl+:#3ddbd9 --color=info:#78a9ff,prompt:#33b1ff,pointer:#42be65 --color=marker:#ee5396,spinner:#ff7eb6,header:#be95ff'

alias ls='ls --color=auto'
PS1="\[\033[32m\]  \[\033[37m\]\[\033[34m\]\w\[\033[0m\] "
PS2="\[\033[32m\]  > \[\033[0m\]"

# terminal
alias c='clear'
alias lf='lfub'
alias vi='nvim'
alias vim='nvim'
alias svi='sudo nvim'
alias ssw='sudo nvim ~/.local/bin/sw'
alias sdwlb='sudo nvim ~/.local/bin/dwlb-sw'
alias srun='sudo nvim ~/.local/bin/run-sw'
alias yt='ytfzf -t --sort'
alias ytd='ytfzf -t -d --sort'
#alias iv='pqiv -i -t -f --auto-montage-mode --box-colors=#BAC2DE:#cba6f7'
alias zat='zathura'

# power
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias zz='sudo zzz'

# runit
alias sup='sudo sv up'
alias swn='sudo sv down'
alias sre='sudo sv restart'

# xbps
alias xq='sudo xbps-query'
alias xr='sudo xbps-remove'
alias xu='sudo xbps-install -Su'
