cask "fjordlauncher" do
  version "9.2.0"

  on_mojave :or_older do
    sha256 "747c08c2942fc996894398dfd5407f98aee396ef2901bc1b56fa7352e712ef8c"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "911ff6cabaa0fba6327d45f9340ccab3ab6b02c0991f61b9c4f988f61c36e1c9"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end

  name "Fjord Launcher"
  desc "Prism Launcher fork with support for alternative auth servers"
  homepage "https://github.com/unmojang/FjordLauncher"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fjord Launcher.app"

  zap trash: [
    "~/Library/Application Support/FjordLauncher/FjordLauncher-*.log",
    "~/Library/Application Support/FjordLauncher/fjordlauncher.cfg",
    "~/Library/Application Support/FjordLauncher/metacache",
    "~/Library/Preferences/org.fjordlauncher.FjordLauncher.plist",
    "~/Library/Saved Application State/org.fjordlauncher.FjordLauncher.savedState",
  ]
end
