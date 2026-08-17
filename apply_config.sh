#!/bin/sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

copy_config() {
  source=$1
  destination=$2

  mkdir -p "$(dirname -- "$destination")"
  cp "$script_dir/$source" "$destination"
}

copy_config "config/claude/settings.json" "$HOME/.claude/settings.json"
copy_config "config/ghostty/config" "$HOME/.config/ghostty/config"
copy_config "config/git/ignore" "$HOME/.config/git/ignore"
copy_config "config/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
copy_config "config/zsh/.zsh_custom" "$HOME/.zsh_custom"
copy_config "config/zsh/.zsh_custom_git" "$HOME/.zsh_custom_git"

echo "Config applied."
