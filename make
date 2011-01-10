# Build script for Transmission, svn > nightlies.
myfp=`which $0`
mydir=`dirname $myfp`
cd $mydir
svn up
#cd macosx
# rm -rf de.lproj/ es.lprof/ fr.lproj/ it.lproj/ nl.lproj/ pt_PT.lproj/ pt.lproj/ ru.lproj/ #zh_CN.lproj/
cd ../
echo -n SVN: $(svnversion .)  >> log.txt 
xcodebuild -configuration Release
#rm -rf ~/Documents/Transmission/
echo -n  Build completed at  >> log.txt
date >> log.txt