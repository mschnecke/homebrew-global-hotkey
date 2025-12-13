# Homebrew Tap for Global Hotkey

Official Homebrew cask for [Global Hotkey](https://github.com/mschnecke/global-hotkey), a cross-platform application for registering system-wide keyboard shortcuts.

## Installation

```bash
brew tap mschnecke/global-hotkey
brew install --cask global-hotkey
```

## Update

```bash
brew upgrade --cask global-hotkey
```

## Uninstall

```bash
# Keep user data
brew uninstall --cask global-hotkey

# Remove everything including user data
brew uninstall --cask --zap global-hotkey

# Remove tap
brew untap mschnecke/global-hotkey
```

## Post-Installation

Global Hotkey requires Accessibility permissions to register system-wide hotkeys.

1. Open **System Settings** > **Privacy & Security** > **Accessibility**
2. Enable **Global Hotkey** in the list

## Data Locations

| Location | Purpose |
|----------|---------|
| `~/.global-hotkey.json` | Settings and hotkey configurations |

## Architecture Support

The cask installs the ARM64 version for Apple Silicon Macs (M1/M2/M3/M4).

## Automatic Updates

This tap automatically stays in sync with Global Hotkey releases. When a new version is published to the [main repository](https://github.com/mschnecke/global-hotkey), a GitHub Actions workflow updates this cask with new version numbers and checksums.

## Links

- [Global Hotkey Repository](https://github.com/mschnecke/global-hotkey)
- [Releases](https://github.com/mschnecke/global-hotkey/releases)
- [Issues](https://github.com/mschnecke/global-hotkey/issues)
