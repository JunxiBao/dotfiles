# ~/.config/dotfiles/.bashrc
# Main entry point — sources portable config, then machine-specific overrides.
#
# Layout:
#   .bashrc.shared  → tracked in Git, safe to share across machines
#   .bashrc.local   → NOT tracked, machine-specific paths/tools/env

DOTFILES="${HOME}/.config/dotfiles"

[ -f "${DOTFILES}/.bashrc.shared" ] && . "${DOTFILES}/.bashrc.shared"
[ -f "${DOTFILES}/.bashrc.local" ]  && . "${DOTFILES}/.bashrc.local"

# Hermes Agent — ensure ~/.local/bin is on PATH
export PATH="$HOME/.local/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/junxibao/.lmstudio/bin"
# End of LM Studio CLI section

