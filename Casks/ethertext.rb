cask "ethertext" do
  version "1.12"
  sha256 "39dcda940e5f0552c811f4f2b585997ac6afc8aa84484caf7bcdd3b3121eb5c2"

  url "https://ethertext.app/downloads/#{version}/Ethertext.dmg"
  name "Ethertext"
  desc "AI-powered text transformation and memory for macOS"
  homepage "https://ethertext.app"

  depends_on macos: ">= :ventura"

  app "Ethertext.app"

  zap trash: [
    "~/Library/Application Support/Ethertext",
    "~/Library/Preferences/com.thrashr888.Ethertext.plist",
    "~/Library/Caches/com.thrashr888.Ethertext",
  ]
end
