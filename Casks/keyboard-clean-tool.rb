cask "keyboard-clean-tool" do
  version "0.1.0"
  sha256 "cf68166d1db2eea0c1beac553a8548413a8ea55a70f8d953817994040cba6a44"

  url "https://github.com/yurihbm/keyboard-clean-tool/releases/download/v#{version}/KeyboardCleanTool.zip"
  name "Keyboard Clean Tool"
  desc "Temporarily disable your keyboard so you can clean it"
  homepage "https://github.com/yurihbm/keyboard-clean-tool"

  app "Keyboard Clean Tool.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Keyboard Clean Tool.app"]
  end
end
