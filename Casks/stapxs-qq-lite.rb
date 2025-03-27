cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "3.1.2"
    sha256 arm:   "837b537ba6a0168e49dff8a52015befba7e058ed22aca18b889037112d6102d4",
           intel: "23ae824e898227d5f07923d824d1f6840afa1bd5665ca4451c1bdd522fdae2b5"
  
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
