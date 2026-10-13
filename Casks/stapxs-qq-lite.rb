cask "stapxs-qq-lite" do
  version "3.5.2"
  sha256 "de8035dbb9edc262015fe927c88d15c25f6b85bb270427b30dcb6af896721ba6"

  on_arm do
    url "https://github.com/Stapxs/Stapxs-QQ-Lite-2.0/releases/download/v#{version}/Stapxs.QQ.Lite-#{version}-aarch64.dmg"
  end

  on_intel do
    raise CaskUnavailableError, "Stapxs QQ Lite 已不再提供 Intel 构建"
  end

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
