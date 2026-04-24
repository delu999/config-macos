# macOS Development Setup



```bash
brew install starship fzf zoxide

git clone https://github.com/delu999/config-macos
cd config-macos
chmod +x script.sh
./script.sh

sudo defaults write com.apple.universalaccess reduceMotion -bool true
# this last command requieres root and it is not present in the script

```

## Karabiner Dock shortcuts

The Karabiner config adds these Dock shortcuts using the meta key
(`command + option + control + shift`, mapped from caps lock):

- `meta + up_arrow`: hide the Dock
- `meta + left_arrow`: move the Dock left and show it
- `meta + down_arrow`: move the Dock bottom and show it
- `meta + right_arrow`: move the Dock right and show it

The setup script also keeps Dock auto-hide timing instant with:

```bash
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
```
