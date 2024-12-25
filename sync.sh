#!/bin/sh
# dont forget: makepkg --printsrcinfo > .SRCINFO
#git push origin master
#git push github master
makepkg --printsrcinfo > .SRCINFO
echo Commit changes, $USER-chan :3
read -r _
git push github master
git push origin master
