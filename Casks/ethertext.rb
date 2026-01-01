cask "ethertext" do
  version "1.13"
  sha256 "6a2dcc8b84f3b22e0c136a2836834879b1bf31552a6f87258ec377fe5074ecdc"

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
