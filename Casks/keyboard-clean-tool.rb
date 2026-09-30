cask "keyboard-clean-tool" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/yurihbm/keyboard-clean-tool/releases/download/v#{version}/KeyboardCleanTool.zip"
  name "Keyboard Clean Tool"
  desc "Temporarily disable your keyboard so you can clean it"
  homepage "https://github.com/yurihbm/keyboard-clean-tool"

  app "KeyboardCleanTool.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/KeyboardCleanTool.app"]
  end
end
