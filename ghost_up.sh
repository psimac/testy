#! /bin/bash
echo Pulling from Azure
git pull azure master
echo Pulling updates from origin
git pull origin
echo Compiling assets
grunt init
grunt prod
echo Committing to local repository
git commit -a -m "Applying changes from origin"
echo Pushing to Azure
git push azure master