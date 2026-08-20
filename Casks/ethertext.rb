cask "ethertext" do
  version "1.15"
  sha256 "67ac34511784d06d230970a18ebb4c2e44943085434ef29b6ac502381e2cb474"

  url "https://ethertext.app/downloads/#{version}/Ethertext.dmg"
  name "Ethertext"
  desc "AI-powered text transformation and memory for macOS"
  homepage "https://ethertext.app"

  # This tap is deprecated. New releases are published to thrashr888/homebrew-tap.
  deprecate! date: "2026-08-19", because: "has moved to the thrashr888/tap tap"

  depends_on macos: :ventura

  app "Ethertext.app"

  caveats <<~EOS
    This tap (thrashr888/ethertext) is deprecated and will not receive new releases.
    Migrate to the unified tap:

      brew untap thrashr888/ethertext
      brew tap thrashr888/tap
      brew install --cask thrashr888/tap/ethertext
  EOS

  zap trash: [
    "~/Library/Application Support/Ethertext",
    "~/Library/Preferences/com.thrashr888.Ethertext.plist",
    "~/Library/Caches/com.thrashr888.Ethertext",
  ]
end
