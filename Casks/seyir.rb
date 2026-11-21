cask "seyir" do
  version "0.11.0"
  sha256 "310129675b1bbf7a892c12883b510b92c88604dd4f09a3d55e00468ccdf184ae"

  url "https://github.com/Clay-Tech/seyir/releases/download/v#{version}/Seyir.dmg"
  name "Seyir"
  desc "Terminal that shows what the AI coding agent is doing, live"
  homepage "https://clay-tech.github.io/seyir/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Seyir.app"

  zap trash: [
    "~/Library/Application Support/com.ksyntax.seyir",
    "~/Library/Caches/com.ksyntax.seyir",
    "~/Library/Preferences/com.ksyntax.seyir.plist",
    "~/Library/Saved Application State/com.ksyntax.seyir.savedState",
    "~/Library/WebKit/com.ksyntax.seyir",
  ]
end
