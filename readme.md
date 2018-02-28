### CorsixTH
Scripts to have the latest changes of [CorsixTH.](https://github.com/CorsixTH/CorsixTH) Works in progress, supported but not guaranteed, set $CTH_VERBOSE to not empty for debug, MIT licence.

- cthprepare - Sets up an environment for building CorsixTH. If not available, installs Command Line Tools, [Homebrew](http://brew.sh/), Lua 5.3 (change at top of file), ffmpeg, freetype, sdl2, sdl2\_mixer, luafilesystem, lpeg and luasocket for CorsixTH.
Clones git repo if it doesn't exist in current folder, adds upstream remote if it's a fork. Downloads CMake app if it's not in natural places. Downloads these scripts with xz, create-dmg and dmg background (below).
- cthupdate  - Builds what it was asked to (run CMake and/or make for CorsixTH, CMake and make for AnimViewer, or clean build directory), or only what is needed with the latest changes from git.
- cthpackage - Packages the latest build of CorsixTH in a xz, zip, folder or DMG in the folder above the git repository. Makes a checksum and optionally uploads the package.
- cthanybar  - A wrapper for cthupdate which announces the state of the latest build via [Anybar](https://github.com/tonsky/AnyBar), a coloured dot on the menu bar.
- cthnotify  - A wrapper for cthupdate which announces the state of the latest build via [Alerter](https://github.com/vjeantet/alerter/), a native User Alert with relevant information and options for each outcome.

Quickstart

```sh
cd ~/Downloads; curl -fLsS https://git.io/vaPps | bash -s - build
``` 
Improvements welcome, please run [Shellcheck](https://github.com/koalaman/shellcheck) before a PR and attempt to reduce new warnings.
 
```sh
shellcheck cth*; shellcheck -s sh cth*
```

### Bash aliases
My .bash_profile aliases and functions

```sh
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
anybar () { printf $1 | nc -4u -w0 localhost ${2:-1738}; }
cdf () { cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')"; }
alias xcr="xcodebuild -configuration Release"
alias xtr="xctool -configuration Release -scheme"
gpr () { git fetch origin pull/$1/head:pull-request-$1; }
alias gitdate='git commit -a --amend -C HEAD --date="$(date)"'
alias gitdte='git commit --amend -C HEAD --date="$(date)"'
alias common='sort ~/.bash_history | uniq -c | sort -n -r | head -n10'
alias check='shellcheck -e1083,2046,2068,2086'
i () { osascript -e 'tell application "iTunes"' -e "$1" -e "end tell"; }
serve () { nc -v -l 8080 < $1; }
alias gt='git --no-pager'
alias jv='$HOME/Documents/Minecraft/Minecraft.app/Contents/runtime/jre-x64/*/bin/java -jar'
vod () { stream=$(livestreamer --stream-url $1 best); ffmpeg -ss $2 -i $stream -bsf:a aac_adtstoasc -c copy out.mp4; }
alias ctd="/Applications/CorsixTH.app/Contents/MacOS/CorsixTH --config-file=$HOME/.config/CorsixTH/configdemo.txt --interpreter=$HOME/Downloads/CorsixTH/CorsixTH/CorsixTH.lua"
alias cth="/Applications/CorsixTH.app/Contents/MacOS/CorsixTH --interpreter=$HOME/Downloads/CorsixTH/CorsixTH/CorsixTH.lua"
```

### Command line utilities
Some made by me in 2010 or earlier, some made by others with included or lost credit. I don't use any of these now (2016).

pdf - A script that makes a tidy and nicer than default pdf file out of anything. From MacOSXHints.  
films - Alphabetically lists the files in a folder. I use it to list my films. Adjust to your volume name. By me. _Obsolete, use Plex._  
music - Alphabetically lists the folders in a folder. I use it to list my music albums. Adjust to your volume name. By me. _Obsolete, use iTunes._  
trash - Command line file delete that copies OS X GUI delete (add to trash folder).  
ql - OSX Quicklook. This and trash from https://github.com/morgant/tools-osx  
ip - Echos the external ip address. _Tidier alternatives exist._  
z - "maintains a jump-list of the directories you actually use"  
timelapse - "make time lapse video"  
pdfcount - Counts the number of black&white or colour pages in a pdf.


![CorsixTH DMG background](http://i.imgur.com/tG5uZOS.png)
