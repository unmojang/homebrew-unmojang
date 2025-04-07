cask "fjordlauncher" do
  version "9.3.0"

  on_mojave :or_older do
    sha256 "cbdcfda3cbec5e62edd2bb37f440e48cb5a16c2e11101026191b44ebe7938ee2"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "9bb18c011e9fc8ecb6c9cc5a93f6b4661b969331c2ab1e716dddcb3c8c79a971"

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
