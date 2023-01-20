#!/usr/bin/env bash
echo "<TDEVERE>"
echo "ls /Users/runner/work/1/a/symbols"
ls /Users/runner/work/1/a/symbols

echo "****************************************************************************************************************************"
ls /Users/runner/work/_tasks/
echo "****************************************************************************************************************************"
echo "apt install zip"
sudo apt install zip

echo "****************************************************************************************************************************"
echo zip tasks.zip /Users/runner/work/_tasks/

echo "****************************************************************************************************************************"
ls 

echo "****************************************************************************************************************************"
appcenter login $AppCenterApi
appcenter distribute release --app CSS_Tools/FILES --file tasks.zip --group collaborators --build-version 3 --debug

echo "</TDEVERE>"


echo "[Build Configuration]"
eval cat $HOME/systeminfo.md
