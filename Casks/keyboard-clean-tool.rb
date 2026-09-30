cask "keyboard-clean-tool" do
  version "0.1.0"
  sha256 "3cec03095d4edca79e943e292b8b7445350e0003f117ebb4d30117ab07c8bab4"

  url "https://github.com/yurihbm/keyboard-clean-tool/releases/download/v#{version}/KeyboardCleanTool.zip"
  name "Keyboard Clean Tool"
  desc "Temporarily disable your keyboard so you can clean it"
  homepage "https://github.com/yurihbm/keyboard-clean-tool"

  app "KeyboardCleanTool.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/KeyboardCleanTool.app"]
  end
end
