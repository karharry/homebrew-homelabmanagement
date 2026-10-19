cask "homelabmanagement" do
  version "1.1"
  sha256 "1bc4da4eb14b2fd1d04bf98f66d03a06bbd6ce88d8dc8e9f894ed02aa4b5cc7c"

  url "https://github.com/karharry/HomeLabManagement-Mac/releases/download/#{version}/HomeLabManagement-macOS-#{version}.zip"
  name "HomeLab Management"
  desc "Unified dashboard for TrueNAS, Linux, Windows, and macOS home-lab machines"
  homepage "https://github.com/karharry/HomeLabManagement-Mac"

  depends_on macos: :sonoma

  app "HomeLab Management.app"

  zap trash: [
    "~/Library/Preferences/com.karharry.homelabmanagement.plist",
  ]

  caveats <<~EOS
    This build isn't notarized (it's a personal project with no Apple
    Developer Program enrollment behind it), so macOS will block it on
    first launch. To open it:

      1. In Finder, right-click (or Control-click) "HomeLab Management"
         in /Applications and choose Open, then confirm in the dialog.

         — or —

      2. System Settings → Privacy & Security → scroll down → click
         "Open Anyway" next to the HomeLab Management warning.

    You only need to do this once per version. Note: this build doesn't
    include the WidgetKit desktop widgets (they require entitlements
    that in turn require a paid developer account) — everything else is
    fully featured.
  EOS
end
