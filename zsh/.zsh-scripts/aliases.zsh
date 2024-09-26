# ALIASES ---------------------------------------------------------------------
alias unmount_all_and_exit='unmount_all && exit'
alias d=docker
alias dc=docker-compose
alias dkill="pgrep \"Docker\" | xargs kill -9"

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ta='tmux attach -t'

alias l='eza -lah'
alias ls=eza
alias sl=eza
alias c='clear'
alias s='source ~/.zshrc'

alias jj='pbpaste | jsonpp | pbcopy'

alias trim="awk '{\$1=\$1;print}'"

alias cat="bat"
alias tree="eza --tree"

# BINDS


bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^G "lazygit\n"


# Connections

alias ssh_pi="ssh pi@192.168.2.3"
