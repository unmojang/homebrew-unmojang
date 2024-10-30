cask "fjordlauncher" do
  version "9.1.0"

  on_mojave :or_older do
    sha256 "95d82b96c562bff3b09b12385d9d68c6d05eba48b2ce47396d073d3d5ba8ead3"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_catalina :or_newer do
    sha256 "07fe81d0a4e6d35fa2a23f5b9d81097883a16e3fb1678c5aa25d9327d0ec5985"

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
