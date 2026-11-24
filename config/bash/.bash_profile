# Login shells (Terminal.app, VS Code) read this file instead of ~/.bashrc.
[[ -r "$HOME/.profile" ]] && . "$HOME/.profile"
[[ -r "$HOME/.bashrc" ]] && . "$HOME/.bashrc"
