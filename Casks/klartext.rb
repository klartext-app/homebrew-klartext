cask "klartext" do
  arch arm: "aarch64", intel: "x86_64"
  version "0.1.2"

  sha256 arm:   "sha256:976dc56684e1c3ca6687d665ba6687934247b0035bf023b79a450e4c2fb94ab5",
         intel: "sha256:3656618416df54fa6593589af1d6aec31719b5ebb2198a261ab6921b2918b3d8"

  url "https://github.com/klartext-app/klartext-app/releases/download/v#{version}/Klartext_#{version}_#{arch}.dmg"
  name "Klartext"
  desc "Moderner Texteditor mit JSON/XML/YAML-Formatierung"
  homepage "https://github.com/klartext-app/klartext-app"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  app "Klartext.app"

  zap trash: []
end
