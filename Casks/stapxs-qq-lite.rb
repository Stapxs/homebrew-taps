cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.8.6"
    sha256 arm:   "1450e36a4a159ce8cd585b6e6080123309ca44a79fd7b3b1d461eb2c0ddb4b9c",
           intel: "20ab27984ba94dba1f2d1722526711c5992fff438ccf3bc5f48e601454467b2"
  
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
