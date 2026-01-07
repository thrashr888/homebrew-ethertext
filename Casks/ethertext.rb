cask "ethertext" do
  version "1.14"
  sha256 "ca7fb944ae21f89b65b9a7ca0c000bf2ddc5037eb10e763a666d52704bb4d89c"

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
