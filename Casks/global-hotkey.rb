cask "global-hotkey" do
  version "1.0.10"
  sha256 arm: "705789f8908adcd6d095cddc48c910d5fba05701314686bdac97ea7ad9a015cb"
  url "https://github.com/mschnecke/global-hotkey/releases/download/v#{version}/GlobalHotkey_#{version}_aarch64.pkg"

  name "GlobalHotkey"
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
    GlobalHotkey requires Accessibility permissions to register system-wide hotkeys.

    To grant permissions:
    1. Open System Settings > Privacy & Security > Accessibility
    2. Enable GlobalHotkey in the list

    Settings are stored in: ~/.global-hotkey.json
  EOS
end
