### CorsixTH

Scripts to have the latest changes of [CorsixTH.](https://github.com/CorsixTH/CorsixTH) Works in progress, supported but not guaranteed, set $CTH_VERBOSE to not empty for debug, MIT licence.

- cthprepare - Sets up an environment for building CorsixTH. If not available, installs Xcode's Command Line Tools, [Homebrew](http://brew.sh/), Lua 5.3 (change at top of file), ffmpeg, freetype, sdl2, sdl2\_mixer, luarocks,
 luafilesystem, lpeg and luasocket for CorsixTH. Clones git repo if it doesn't exist in current folder, adds upstream remote if it's a fork. Downloads these scripts with cmake, xz, dmg-create and the dmg background (below).

- cthupdate - Builds what it was asked to (run CMake and/or make for CorsixTH, CMake and make for AnimViewer, or clean build directory), or only what is needed with the latest changes from git.

- cthpackage - Packages the latest build of CorsixTH in a xz, zip, folder or DMG in the folder above the git repository. Makes a checksum and optionally uploads the package.

- cthanybar  - A wrapper for cthupdate which announces the state of the latest build via [Anybar](https://github.com/tonsky/AnyBar), a coloured dot on the menu bar.

- cthnotify  - A wrapper for cthupdate which announces the state of the latest build via [Alerter](https://github.com/vjeantet/alerter/), a native User Alert with relevant information and options for each outcome.

Quickstart

```sh
cd ~/Downloads; curl -fLsS https://git.io/vaPps | bash -s - build
```

Improvements and abstractions welcome, optionally run [Shellcheck](https://github.com/koalaman/shellcheck) before a PR and attempt to reduce new warnings.

```sh
shellcheck -s sh cth*
```

![CorsixTH DMG background](http://i.imgur.com/tG5uZOS.png)

### Bash aliases and functions

```sh
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
anybar () { printf $1 | nc -4u -w0 localhost ${2:-1738}; }
cdf () { cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"; }
alias xcr="xcodebuild -configuration Release"
alias xtr="xctool -configuration Release -scheme"
alias common='sort ~/.bash_history | uniq -c | sort -n -r | head -n10'
alias check='shellcheck -s sh'
i () { osascript -e 'tell application "iTunes"' -e "$1" -e "end tell"; }
serve () { nc -v -l 8080 <<< "HTTP/1.1 200 OK\n\n $(date) $(cat $@)"; }
vod () { stream=$(livestreamer --stream-url $1 best); ffmpeg -ss $2 -i $stream -bsf:a aac_adtstoasc -c copy out.mp4; }
alias ctd="/Applications/CorsixTH.app/Contents/MacOS/CorsixTH --config-file=$HOME/.config/CorsixTH/configdemo.txt --interpreter=$HOME/Downloads/CorsixTH/CorsixTH/CorsixTH.lua"
alias cth="/Applications/CorsixTH.app/Contents/MacOS/CorsixTH --interpreter=$HOME/Downloads/CorsixTH/CorsixTH/CorsixTH.lua"
rt () { for i in $@; do python3 -m youtube_dl -f "best[height=720]" $i; done  }
pman () { man -t $@ | open -fa Preview.app; }
alias ql="qlmanage -p 2>/dev/null"
alias jv="$HOME/Library/Application\ Support/minecraft/runtime/jre-x64/jre.bundle/Contents/Home/bin/java -jar"
```
