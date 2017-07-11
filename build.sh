#!/bin/bash 

cd ./public
# git init
git add .
git commit -m "blog update"
git push --force --quiet "git@git.oschina.net:lslvxy/lslvxy.git" master:master