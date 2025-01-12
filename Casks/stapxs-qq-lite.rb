cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "3.0.2"
    sha256 arm:   "5e1e21ac70677dec1cc4756e4f5f7ee877223843d81dbc63a665aa202bbb57e6",
           intel: "4c02ea29482c322fafaae6af6d3555e586c1a3e21499762c10f822cc112d2756"
  
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
