# homebrew-homelabmanagement

Homebrew tap for [HomeLab Management](https://github.com/karharry/HomeLabManagement),
a native macOS app for monitoring and managing TrueNAS, Linux, Windows, and
macOS home-lab machines.

> **Project status:** maintained on a best-effort basis alongside a full-time
> job — no guaranteed support, updates, or response times. See the main
> repo's README for details.

## Install

```bash
brew tap karharry/homelabmanagement
brew install --cask homelabmanagement
```

## Updating the Cask for a new release

After publishing a new GitHub Release with a zipped `.app` attached:

```bash
curl -L -o /tmp/HomeLabManagement.zip "https://github.com/karharry/HomeLabManagement/releases/download/X.Y.Z/HomeLabManagement.zip"
shasum -a 256 /tmp/HomeLabManagement.zip
```

(Release tags are plain `X.Y.Z`, no `v` prefix — matches `releases/tag/1.0.0` etc.)

Update `Casks/homelabmanagement.rb` with the new `version` and the `sha256`
printed above, then commit and push.

Test locally before pushing:

```bash
brew install --cask ./Casks/homelabmanagement.rb
brew uninstall --cask homelabmanagement   # to re-test from scratch
```
