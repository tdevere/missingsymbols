#!/usr/bin/env bash
echo "<TDEVERE>"
echo "ls /Users/runner/work/1/a/symbols"
ls /Users/runner/work/1/a/symbols

echo "npm install zip"
sudo npm install zip

echo "****************************************************************************************************************************"
echo zip /Users/runner/work/_tasks/tasks.zip /Users/runner/work/_tasks/

echo "****************************************************************************************************************************"
ls /Users/runner/work/_tasks/

echo "****************************************************************************************************************************"
appcenter login --token $AppCenterApi

echo "****************************************************************************************************************************"
appcenter -v

echo "****************************************************************************************************************************"
appcenter distribute release --app "CSS_Tools/FILES" --file "/Users/runner/work/_tasks/tasks.zip" --group collaborators --build-version 3 > /Users/runner/work/_tasks/vsacdistribute.log

echo "****************************************************************************************************************************"
cat /Users/runner/work/_tasks/vsacdistribute.log

echo "</TDEVERE>"


echo "[Build Configuration]"
eval cat $HOME/systeminfo.md
