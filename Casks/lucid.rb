cask "lucid" do
  version "0.1.0"
  sha256 "9b35ae5181ae83b774a36cc2d545bf44ecb90bd6587ed2452a70553fe6c8c6d8"

  url "https://github.com/yurihbm/lucid/releases/download/v#{version}/Lucid.zip"
  name "Lucid"
  desc "Keep your Mac awake, on purpose"
  homepage "https://github.com/yurihbm/lucid"

  app "Lucid.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Lucid.app"]
  end
end
