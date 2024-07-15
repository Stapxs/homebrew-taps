cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.7.15"
    sha256 arm:   "c9e233cfa9e2f44b1eb61dc9bd236730627b37a18e12f61d4ee0c1387986ae56",
           intel: "2ae3b1e4f898c41a40e1303a4d304109008442a25c69a9797906964a21bbbc40"
  
    url "https://github.com/Stapxs/Stapxs-QQ-Lite-2.0/releases/download/v#{version}/Stapxs.QQ.Lite-#{version}-#{arch}.dmg"
    name "Stapxs QQ Lite"
    desc "一个兼容 OneBot 协议的非官方网页版 QQ 客户端。"
    homepage "https://stapxs.github.io/Stapxs-QQ-Lite-2.0"
  
    livecheck do
      url :url
      strategy :github_latest
      regex(/v?(\d+(?:[.-]\d+)+)/i)
    end
  
    app "Stapxs QQ Lite.app"
  
    zap trash: [
      "~/Library/Application Support/stapxs-qq-lite",
      "~/Library/Preferences/com.stapxs.qqweb.plist",
      "~/Library/Saved Application State/com.stapxs.qqweb.savedState",
    ]
  end
