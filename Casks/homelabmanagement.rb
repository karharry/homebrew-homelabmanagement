cask "homelabmanagement" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256_OF_THE_RELEASE_ZIP"

  url "https://github.com/karharry/HomeLabManagement/releases/download/v#{version}/HomeLabManagement.zip"
  name "HomeLab Management"
  desc "Unified dashboard for TrueNAS, Linux, Windows, and macOS home-lab machines"
  homepage "https://github.com/karharry/HomeLabManagement"

  depends_on macos: ">= :sonoma"

  app "HomeLab Management.app"

  zap trash: [
    "~/Library/Containers/com.karharry.homelabmanagement",
    "~/Library/Preferences/com.karharry.homelabmanagement.plist",
  ]
end
