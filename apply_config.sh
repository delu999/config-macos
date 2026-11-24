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

copy_config "config/atuin/config.toml" "$HOME/.config/atuin/config.toml"
copy_config "config/claude/settings.json" "$HOME/.claude/settings.json"
copy_config "config/git/ignore" "$HOME/.config/git/ignore"
copy_config "config/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"
copy_config "config/mise/config.toml" "$HOME/.config/mise/config.toml"
copy_config "config/vicinae/settings.json" "$HOME/.config/vicinae/settings.json"
copy_config "config/bash/.bash_custom" "$HOME/.bash_custom"
copy_config "config/bash/.bash_custom_git" "$HOME/.bash_custom_git"
copy_config "config/bash/.bash_profile" "$HOME/.bash_profile"
copy_config "config/bash/.bashrc" "$HOME/.bashrc"

echo "Config applied."
