cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.9.3"
    sha256 arm:   "3208b6e02186fc122717738bcba2208fe7b7e9fffdbf34da8c5856f49c4c9ca4",
           intel: "b7b9513ece8ba7c8e4a82ba7603d5cfee4a0b408610c1a2dd45b640cfe53255a"
  
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
