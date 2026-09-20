#!/bin/bash
# Apply custom dock autohide settings (instant show, faster animation)

defaults write com.apple.dock autohide-delay -int 0
killall Dock

echo "Custom dock settings applied"