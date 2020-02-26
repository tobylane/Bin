## Caskmas

Finds you a centralised app store for existing apps.  
Looks in Homebrew cask and Mac Apple Store for what you downloaded and probably haven't updated.  
Requires mas and trash - brew install mas trash.  
(Formerly required Bash 4+, still a good idea generally.)  
MIT Licence.  
Passes Shellcheck.  
Option: install: if an app could be replaced by one from Homebrew then do it.  
Option: list: list all apps not found in either app store.  

### Sample output

```
$ caskmas list
Already up-to-date.
Running in /Applications
--
Already installed by brew: AnyBar
--
Ignoring: App Store
--
Already installed by mas: Archy
--
clementine 1.0.1
clementine: 1.3.1
https://www.clementine-player.org/
--
GrandPerspective 1.5.0
GrandPerspective 2.3.2 [1.99]
By: Erwin Bonsma
--
Luminance HDR 2.6.0 Unknown Version
Not available
--
Not available
 Luminance HDR

$ caskmas install
Already up-to-date.
Running in /Downloads
--
GitHub Hasty Things Done Hastily
==> Downloading https://desktop.githubusercontent.com/releases/2.3.1-8a055015/GitHubDeskto
################################################################################### 100.0%
==> Verifying SHA-256 checksum for Cask 'github'.
==> Installing Cask github
==> Moving App 'GitHub Desktop.app' to '/Applications/GitHub Desktop.app'.
==> Linking Binary 'github.sh' to '/usr/local/bin/github'.
🍺  github was successfully installed!
```

Caskmas doesn't know about apps with different names from their packages, eg Alfred, Github Desktop.  
The script ignores App Store because it is updated with the OS.  
Clementine was found in Homebrew cask, GrandPerspective was found in the Mac App Store.  
Mac App Store search results may be less than helpful, sorry.  
What this doesn't do is update everything, that's brew upgrade; mas update
