## Caskmas

Finds you a centralised app store for existing apps.
Looks in Homebrew cask and Mac Apple Store for what you downloaded and probably haven't updated.
Requires Bash>4, mas, trash - brew install bash mas trash.  
MIT Licence  
Passes Shellcheck  
Option: install: if an app could be replaced by one from Homebrew then do it.  
Option: list: list all apps not found in either app store.  

### Sample output

```
$ caskmas list
Already up-to-date.
Running in /Applications
--
Alfred 4 4.0.5
Not avaliable
--
anybar 0.1.4
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
Not avaliable
 Alfred
```

Alfred installed by Homebrew is Alfred 4.app, this is a caskmas bug.
The app ignores App Store because it is updated with the OS.
Clementine was found in Homebrew cask, GrandPerspective was found in the Mac App Store.