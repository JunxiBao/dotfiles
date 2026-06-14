# ~/.bash_profile
# macOS opens login shells by default; source .bashrc so our config loads.

[ -f ~/.bashrc ] && . ~/.bashrc

# Hermes Agent — ensure ~/.local/bin is on PATH
export PATH="$HOME/.local/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/junxibao/.lmstudio/bin"
# End of LM Studio CLI section

