cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.7.13"
    sha256 arm:   "d0b9d9d3c985ff6f5917e4f5822cb71aecd818f29de54d44cc662fe072c64874",
           intel: "963c657cbd3ff22e07693bc2bfea454a40a9f91d9a33fa9d3cce42255d328ffe"
  
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
