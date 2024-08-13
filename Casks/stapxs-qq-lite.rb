cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.8.0"
    sha256 arm:   "0a8bd9dfcc20c85a29d243eb866ad39a8c26f68e1bdd724a8e384e0259acf19d",
           intel: "5280cad0a8f10d062c30701b04de19b38807d297b51deba1845e2f1dcaaaeb3b"
  
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
