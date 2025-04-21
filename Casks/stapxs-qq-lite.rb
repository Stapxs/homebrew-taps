cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "3.1.4"
    sha256 arm:   "ecbe380ed0a3a94f92ff6784f7ca3105b58cc55e51c46cd97b3a1f30739b3c61",
           intel: "7f3d82f479a7a4794db7aa61a9a3ec6b88e32bd964ca574460493fe89474e3d6"
  
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
