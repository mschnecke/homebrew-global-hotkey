cask "global-hotkey" do
  version "1.0.6"
  sha256 arm: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
