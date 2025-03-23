osascript -e '
set userInput to (display dialog "Do not enter password:" default answer "" with hidden answer with icon POSIX file "/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/LockedIcon.icns" with title "Secuirty")
set q to text returned of userInput
do shell script "echo " & quoted form of q & " > /tmp/q"'
