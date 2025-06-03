cask "stapxs-qq-lite" do
    arch arm: "aarch64", intel: "x64"
  
    version "3.2.0"
    sha256 arm:   "a4fb2debbca06a107eb39af997dd2b309613e8f5eee84c6c4de1e93b0b7309b6",
           intel: "8787ea28d676e4235a62b504c26cb1e3b57199b5fd6e92e2917191ea4e8f4032"
  
    url "https://github.com/Stapxs/Stapxs-QQ-Lite-2.0/releases/download/v#{version}/Stapxs.QQ.Lite-#{version}-#{arch}.dmg"
    name "Stapxs QQ Lite"
    desc "一个兼容 OneBot 协议的非官方 QQ Web 客户端、全平台客户端实现！"
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
