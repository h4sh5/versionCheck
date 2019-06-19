#system
for p in /Applications/*
do echo $p, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleShortVersionString | cut -d '>' -f 2 2>&1`, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleVersion | cut -d '>' -f 2 2>&1`  
done

#user
for p in ~/Applications/*
do echo $p, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleShortVersionString | cut -d '>' -f 2 2>&1`, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleVersion | cut -d '>' -f 2 2>&1` 
done

#flash
for p in /Library/Internet\ Plug-Ins/*
do echo $p, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleShortVersionString | cut -d '>' -f 2 2>&1`, `plutil -p "$p/Contents/Info.plist"  | grep --colour=no -i CFBundleVersion | cut -d '>' -f 2 2>&1`
done