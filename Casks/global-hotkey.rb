cask "global-hotkey" do
  version "1.0.6"
  sha256 arm: "58bda63fbbe42d001bb5ca9a243db99e7677f163c0d61e26774c26bd5b9faf8d"

  url "https://github.com/mschnecke/global-hotkey/releases/download/v#{version}/GlobalHotkey_#{version}_aarch64.pkg"

  name "Global Hotkey"
  desc "System-wide keyboard shortcuts that work from any application"
  homepage "https://github.com/mschnecke/global-hotkey"

  pkg "GlobalHotkey_#{version}_aarch64.pkg"

  uninstall pkgutil: "net.pisum.global-hotkey",
            delete: "/Applications/GlobalHotkey.app"

  zap trash: [
    "~/Library/Application Support/net.pisum.global-hotkey",
    "~/Library/Caches/net.pisum.global-hotkey",
    "~/Library/Preferences/net.pisum.global-hotkey.plist",
    "~/Library/Saved Application State/net.pisum.global-hotkey.savedState",
    "~/.global-hotkey.json",
  ]

  caveats <<~EOS
    Global Hotkey requires Accessibility permissions to register system-wide hotkeys.

    To grant permissions:
    1. Open System Settings > Privacy & Security > Accessibility
    2. Enable Global Hotkey in the list

    Settings are stored in: ~/.global-hotkey.json
  EOS
end
