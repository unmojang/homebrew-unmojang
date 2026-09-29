cask "fjordlauncher" do
  on_big_sur :or_older do
    version "9.4.2"
    sha256 "57285ca2d9f14ed9341f3ec8606da88cbb7e12121fa432ff80de1a913ad04174"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end
  on_monterey :or_newer do
    version "11.1.1.0"
    sha256 "01a559e469b44f1ad4fb183924d3cd518f29ec1e3bcc06719f0f40cf7504d105"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-macOS-#{version}.zip"
  end
  on_macos do
    app "Fjord Launcher.app"
    binary "#{appdir}/Fjord Launcher.app/Contents/MacOS/fjordlauncher"

    zap trash: [
      "~/Library/Application Support/FjordLauncher/FjordLauncher-*.log",
      "~/Library/Application Support/FjordLauncher/fjordlauncher.cfg",
      "~/Library/Application Support/FjordLauncher/metacache",
      "~/Library/Preferences/org.unmojang.FjordLauncher.plist",
      "~/Library/Saved Application State/org.unmojang.FjordLauncher.savedState",
      "~/Library/WebKit/org.unmojang.FjordLauncher",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    version "11.1.1.0"
    sha256 arm64_linux:  "51903c8c1a86d959aa72888b9eed45eb901657c0d56f5daeaefcb8180b26ed3a",
           x86_64_linux: "c3c4991a023916bdd2c84cd48ef2545693149df107eb36ea614406892fa77e03"

    url "https://github.com/unmojang/FjordLauncher/releases/download/#{version}/FjordLauncher-Linux-#{arch}.AppImage"

    app_image "FjordLauncher-Linux-#{arch}.AppImage", target: "FjordLauncher.AppImage"

    zap trash: [
      "~/.local/share/FjordLauncher/FjordLauncher-*.log",
      "~/.local/share/FjordLauncher/fjordlauncher.cfg",
      "~/.local/share/FjordLauncher/metacache",
    ]
  end

  name "Fjord Launcher"
  desc "Prism Launcher fork with support for alternative auth servers"
  homepage "https://github.com/unmojang/FjordLauncher"

  auto_updates false
end
