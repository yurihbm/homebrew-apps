cask "lucid" do
  version "0.1.0"
  sha256 "ce4725c60fa9b4ab8dceda5420e005491ffb5e568dae2480416623ebbea49693"

  url "https://github.com/yurihbm/lucid/releases/download/v#{version}/Lucid.zip"
  name "Lucid"
  desc "Keep your Mac awake, on purpose"
  homepage "https://github.com/yurihbm/lucid"

  app "Lucid.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Lucid.app"]
  end
end
