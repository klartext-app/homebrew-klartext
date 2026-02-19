# Homebrew Cask für Klartext (macOS)
# Siehe docs/INSTALL.md – dieses Cask gehört in ein Tap-Repo (homebrew-klartext).
cask "klartext" do
  arch arm: "aarch64", intel: "x86_64"
  version "0.1.8"

  sha256 arm:   "db5ced90b7eea88c1d8d467ae393ebfbf9d1edb9fc464225371cec620e25df94",
         intel: "REPLACE_WITH_X86_64_DMG_SHA256"

  url "https://github.com/klartext-app/klartext-app/releases/download/v#{version}/Klartext_#{version}_#{arch}.dmg"
  name "Klartext"
  desc "Moderner Texteditor mit JSON/XML/YAML-Formatierung"
  homepage "https://github.com/klartext-app/klartext-app"

  app "Klartext.app"

  zap trash: []
end
