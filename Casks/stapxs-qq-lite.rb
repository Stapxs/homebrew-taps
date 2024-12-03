cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "3.0.0"
    sha256 arm:   "74f8c9c26278ffb1ba4a24b70fbbb9597e6d1f76a48ad637ec47cffe68e06b63",
           intel: "9ec35db64b41264c5b3b337fa4660b4f6fc849d0bbab6e642f63164011b981c5"
  
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
