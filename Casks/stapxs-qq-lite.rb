cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.7.17"
    sha256 arm:   "eac17ed1fb01ac08ef6043d65c7cc3b98c82b62546ba489528b214dada225096",
           intel: "9c03fb8b86a33637a7e82d4b47ae6eedfe1128d114334948631fc1279b38917f"
  
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
