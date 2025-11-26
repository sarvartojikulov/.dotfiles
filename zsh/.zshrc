# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

export PATH=$PATH:/usr/local/go/bin

source_if_exists $HOME/.env.sh
source_if_exists $HOME/.zsh-scripts/history.zsh
source_if_exists $HOME/.zsh-scripts/git.zsh
source_if_exists ~/.fzf.zsh
source_if_exists $HOME/.zsh-scripts/aliases.zsh

source_if_exists /usr/local/etc/profile.d/z.sh
source_if_exists /opt/homebrew/etc/profile.d/z.sh

source_if_exists ~/.venv/bin/activate

if type "direnv" > /dev/null; then
    eval "$(direnv hook zsh)"
fi

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit

if test -z ${ZSH_HIGHLIGHT_DIR+x}; then
else
    source $ZSH_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh
fi

precmd() {
    source $HOME/.zsh-scripts/aliases.zsh
}

export VISUAL=nvim
export EDITOR=nvim

eval "$(starship init zsh)"

# bindkey -v
bindkey '^?' backward-delete-char

# FNM
eval "$(fnm env --use-on-cd)"

# bun completions
[ -s "/Users/sarvartojikulov/.bun/_bun" ] && source "/Users/sarvartojikulov/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"



# JAVA VERSIONS

export JAVA_21_HOME=$(/usr/libexec/java_home -v 21)
export JAVA_17_HOME=$(/usr/libexec/java_home -v 17)
export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)

alias java21="export JAVA_HOME=$JAVA_21_HOME"
alias java17="export JAVA_HOME=$JAVA_17_HOME"
alias java11="export JAVA_HOME=$JAVA_11_HOME"

#set default to Java 11
java21

# pnpm
export PNPM_HOME="/Users/sarvartojikulov/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/sarvartojikulov/.deno/env"

# Created by `pipx` on 2025-02-17 08:26:02
export PATH="$PATH:/Users/sarvartojikulov/.local/bin"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
