#!/bin/sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

copy_config() {
  source=$1
  destination=$2
  source_path=$script_dir/$source

  mkdir -p "$(dirname -- "$destination")"
  if ! cmp -s "$source_path" "$destination"; then
    cp "$source_path" "$destination"
  fi
}

copy_config "config/claude/settings.json" "$HOME/.claude/settings.json"
copy_config "config/ghostty/config" "$HOME/.config/ghostty/config"
copy_config "config/git/ignore" "$HOME/.config/git/ignore"
copy_config "config/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
copy_config "config/zsh/.zsh_custom" "$HOME/.zsh_custom"
copy_config "config/zsh/.zsh_custom_git" "$HOME/.zsh_custom_git"

echo "Config applied."
