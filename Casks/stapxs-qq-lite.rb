cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.7.12"
    sha256 arm:   "5bd0ce02ad95afae0eb85a02336dc4c0a217402bac78fd5305137fdd7d47f3a1",
           intel: "8b51f9d36b70c52bbd766dcdd607b498770199b59cd770387193efbfc379d4a0"
  
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