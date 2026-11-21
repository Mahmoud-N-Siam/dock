#!/bin/bash
# Revert dock autohide settings to defaults

defaults delete com.apple.dock autohide-delay
defaults delete com.apple.dock autohide-time-modifier
defaults delete com.apple.dock digduration-duration
killall Dock

echo "Dock settings reverted to defaults"