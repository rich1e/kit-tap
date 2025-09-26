cask "paste" do
  version "2.5.8"
  sha256 :no_check

  url "https://sourceforge.net/projects/kit-extra/files/mac-kit/Paste.dmg"
  name "Paste"
  desc "Limitless clipboard"
  homepage "https://pasteapp.io/"

  livecheck do
    url "https://hub.pasteapp.io/downloads/stable/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Paste.app"

  zap trash: [
    "~/Library/Application Support/com.wiheads.paste",
    "~/Library/Caches/com.wiheads.paste",
    "~/Library/HTTPStorages/com.wiheads.paste",
    "~/Library/Preferences/com.wiheads.paste.plist",
  ]
end
