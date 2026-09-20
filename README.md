# macOS Dock Instant Autohide

Quick scripts to remove the Dock autohide delay for an instant show on hover.

## What it does

| Setting | Default | Custom |
|---------|---------|--------|
| Autohide delay | ~0.5s | **0s (instant)** |

Only the delay is removed — animation speed stays at system default.

## Scripts

| Script | Description |
|--------|-------------|
| `apply-dock-settings.command` | Removes autohide delay (instant show) |
| `revert-dock-settings.command` | Restores macOS default Dock behavior |

## Usage

### Apply custom settings
```bash
./apply-dock-settings.command
```

### Revert to defaults
```bash
./revert-dock-settings.command
```

Or double-click either `.command` file in Finder.

## How it works

Both scripts modify `com.apple.dock` preferences via `defaults` and restart the Dock:

```bash
# Apply
defaults write com.apple.dock autohide-delay -int 0
killall Dock

# Revert
defaults delete com.apple.dock autohide-delay
killall Dock
```

## Requirements

- macOS (tested on 13+)
- Dock autohide enabled in **System Settings → Desktop & Dock → Automatically hide and show the Dock**

## Why not just use a plist / profile?

These are simple, transparent, one-liner scripts you can read in seconds. No profiles, no launch agents, no dependencies.