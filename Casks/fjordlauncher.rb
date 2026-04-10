cask "fjordlauncher" do
  on_catalina :or_older do
    version "9.4.2"
    sha256 "a501e6a7e9e59c08e35e4a3201f831bae8bcf677c8229237d49018e0577c35f0"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-Legacy-#{version}.zip"
  end
  on_big_sur do
    version "9.4.2"
    sha256 "57285ca2d9f14ed9341f3ec8606da88cbb7e12121fa432ff80de1a913ad04174"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end
  on_monterey :or_newer do
    version "11.0.0.0"
    sha256 "da9ea7f79ffa721519f87596030cfb1323accf65098e7f8d52c19a9ee1d86eb4"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end

  name "Fjord Launcher"
  desc "Prism Launcher fork with support for alternative auth servers"
  homepage "https://github.com/unmojang/FjordLauncher"

  auto_updates false

  app "Fjord Launcher.app"
  binary "#{appdir}/Fjord Launcher.app/Contents/MacOS/fjordlauncher"

  zap trash: [
    "~/Library/Application Support/FjordLauncher/FjordLauncher-*.log",
    "~/Library/Application Support/FjordLauncher/fjordlauncher.cfg",
    "~/Library/Application Support/FjordLauncher/metacache",
    "~/Library/Preferences/org.fjordlauncher.FjordLauncher.plist",
    "~/Library/Saved Application State/org.fjordlauncher.FjordLauncher.savedState",
  ]
end
