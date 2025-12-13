# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Homebrew tap repository for [Global Hotkey](https://github.com/mschnecke/global-hotkey), a cross-platform application for registering system-wide keyboard shortcuts.

## Repository Structure

- `Casks/global-hotkey.rb` - Homebrew cask definition for macOS pkg installer
- `.github/workflows/update-cask.yml` - Automated workflow to update cask on new releases

## Common Commands

```bash
# Install the cask locally for testing
brew install --cask ./Casks/global-hotkey.rb

# Audit the cask for issues
brew audit --cask --strict Casks/global-hotkey.rb

# Uninstall the cask
brew uninstall --cask global-hotkey

# Calculate SHA256 for a new release
curl -L -o arm64.pkg "https://github.com/mschnecke/global-hotkey/releases/download/v<VERSION>/Global.Hotkey_<VERSION>_aarch64.pkg"
shasum -a 256 arm64.pkg
```

## Updating the Cask

The cask is automatically updated via GitHub Actions when triggered. To manually update:

1. Download the new pkg and calculate SHA256
2. Update `version` and `sha256 arm:` in `Casks/global-hotkey.rb`
3. Test locally with `brew install --cask ./Casks/global-hotkey.rb`

## Key Details

- Bundle ID: `net.pisum.global-hotkey`
- App location: `/Applications/GlobalHotkey.app`
- Config file: `~/.global-hotkey.json`
