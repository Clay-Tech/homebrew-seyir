cask "seyir" do
  version "0.10.2"
  sha256 "ffb839f23054389dc17dcb773813d3d7fc36596a80a68849c263461adcb409e3"

  url "https://github.com/Clay-Tech/seyir/releases/download/v#{version}/Seyir.dmg"
  name "Seyir"
  desc "Terminal that shows what the AI coding agent is doing, live"
  homepage "https://clay-tech.github.io/seyir/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Seyir.app"

  zap trash: [
    "~/Library/Application Support/com.ksyntax.seyir",
    "~/Library/Caches/com.ksyntax.seyir",
    "~/Library/Preferences/com.ksyntax.seyir.plist",
    "~/Library/Saved Application State/com.ksyntax.seyir.savedState",
    "~/Library/WebKit/com.ksyntax.seyir",
  ]
end
