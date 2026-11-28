cask "seyir" do
  version "0.13.1"
  sha256 "85350c1b8dee45d626495327a21223349a458919db219a382bc0ba0551132c44"

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
