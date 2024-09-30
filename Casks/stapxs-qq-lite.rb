cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.8.6"
    sha256 arm:   "fd5b2685c7180628271c6b1a61c7300f7a5b82324a0d7af7b1af8a8673f6659b",
           intel: "a931b7e96bdb5493c7e17adf6157d1bfe5f7b65594feb968992b31e13c9f9d57"
  
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
