# ~/.bashrc

export PATH=${HOME}/.local/opt/node/bin:${PATH}
export PATH=${HOME}/.local/bin:${PATH}
export PATH=${HOME}/tool:${PATH}

# Added by Obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
export JAVA_HOME=/opt/homebrew/opt/openjdk
export PATH=${JAVA_HOME}/bin:${PATH}

alias ls='ls --color=auto -G'
alias ll='ls --color=auto -G -lhrt'
alias vim='nvim'
alias vimdiff='nvim -d'
alias cat='bat'
alias top='htop'
alias so='source ~/.bashrc'  
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

export EDITOR=nvim
export TERM=xterm-256color
ulimit -c unlimited

CYAN='\[\e[0;36m\]'
GREEN='\[\e[0;32m\]'
YELLOW='\[\e[0;33m\]'
RESET='\[\e[0m\]'
PS1="[${CYAN}\u@\h ${GREEN}\w${RESET}]${YELLOW}(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))${RESET}\n~~~>\\$ "

eval "$(fzf --bash)"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

clear
neofetch

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/junxibao/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/junxibao/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/junxibao/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/junxibao/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
