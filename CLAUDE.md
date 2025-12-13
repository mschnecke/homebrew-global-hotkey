# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Homebrew tap repository for `global-hotkey`. Homebrew taps are third-party repositories that extend Homebrew's package management capabilities.

## Repository Structure

Homebrew taps follow a standard structure:
- `Formula/` - Contains Ruby formula files (`.rb`) for building packages from source
- `Casks/` - Contains Ruby cask files (`.rb`) for installing macOS applications

## Common Commands

```bash
# Add this tap to Homebrew
brew tap mschnecke/global-hotkey

# Install a formula from this tap
brew install mschnecke/global-hotkey/<formula-name>

# Install a cask from this tap
brew install --cask mschnecke/global-hotkey/<cask-name>

# Test a formula locally before publishing
brew install --build-from-source ./Formula/<formula-name>.rb

# Audit a formula for issues
brew audit --strict --online Formula/<formula-name>.rb

# Test a formula
brew test Formula/<formula-name>.rb
