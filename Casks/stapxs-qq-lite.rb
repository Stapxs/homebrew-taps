cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.9.2"
    sha256 arm:   "c3d14e3a89c3cbbc50dad0abc30ebd5e4793a40defe0dc444cd5a0cdf8af9d41",
           intel: "18b60913a4a9a0b161deb9252d1e7f85fbb3f3a361d19f858b911e3b32544d7c"
  
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
