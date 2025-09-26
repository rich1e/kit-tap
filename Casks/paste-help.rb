cask "paste-help" do
  version "1.0.2"
  sha256 :no_check

  url "https://sourceforge.net/projects/kit-extra/files/mac-kit/Paste_Helper.app.zip"
  name "Paste Helper"
  desc "Paste directly to other applications"
  homepage "https://pasteapp.io/"

  # livecheck do
  #   url "https://hub.pasteapp.io/downloads/stable/latest"
  #   strategy :header_match
  # end

  # auto_updates true
  depends_on macos: ">= :mojave"

  app "Paste Helper.app"

  zap trash: [
    "~/Library/Application Support/com.wiheads.paste-helper",
    "~/Library/Caches/com.wiheads.paste-helper",
    "~/Library/HTTPStorages/com.wiheads.paste-helper",
    "~/Library/Preferences/com.wiheads.paste-helper.plist",
  ]
end
