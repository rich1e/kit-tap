cask "dukto" do
  version "6.0"
  sha256 "86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a"
  
  desc "A simple, fast and multi-platform file transfer tool for LAN users"
  name "Dukto R6"
  homepage "https://sourceforge.net/projects/dukto/"
  url "https://sourceforge.net/projects/kit-extra/files/mac-kit/DuktoR6-OSX.dmg"

  depends_on :macos => ">= :mojave"

  app "Dukto.app"

  zap trash: [
    "/Applications/Dukto.app",
    "~/Library/Preferences/com.yourcompany.Dukto.plist",
    "~/Library/Saved Application State/com.yourcompany.Dukto.savedState",
  ]
end
