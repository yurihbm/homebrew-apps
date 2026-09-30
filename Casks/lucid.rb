cask "lucid" do
  version "0.1.0"
  sha256 "ec43c048d56a50deb1f4743b34dc91fa9d737967715fc0fa6fe3fadeb506f1e4"

  url "https://github.com/yurihbm/lucid/releases/download/v#{version}/Lucid.zip"
  name "Lucid"
  desc "Keep your Mac awake, on purpose"
  homepage "https://github.com/yurihbm/lucid"

  app "Lucid.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Lucid.app"]
  end
end
