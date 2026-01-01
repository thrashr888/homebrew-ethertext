cask "ethertext" do
  version "1.12"
  sha256 "4e08eaf96b3fc9af77184a5fd2e153275cfa377f20d9b3ed894b85e7ce58158c"

  url "https://ethertext.app/downloads/#{version}/Ethertext.zip"
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
