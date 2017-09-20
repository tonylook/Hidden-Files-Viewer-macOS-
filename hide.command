#!/bin/sh
echo "Show Hide Files?"
read RES 
if [ $RES == "y" ]; then
	defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder
    echo "Files are Visible"
elif [ $RES == "n" ]; then
	defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder
    echo "Files are not Visible"
else
    echo "Insert y / n"
fi