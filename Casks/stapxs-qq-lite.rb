cask "stapxs-qq-lite" do
    arch arm: "arm64", intel: "x64"
  
    version "2.8.5"
    sha256 arm:   "b067e04c88b3bee679f912c52b1fc38706a14e789f1f27edcda6dc61d005269a",
           intel: "b7652579c6b0fe18d2ed8fa0a86621a71fc48c30fcddbc9cc67324e46db4ea1c"
  
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
