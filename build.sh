#!/bin/bash 

cd ./public
git init
git add .
git commit -m "blog update"
git push --force --quiet "git@gitee.com:lslvxy/lslvxy.git" master:master
git push --force --quiet "git@github.com:lslvxy/lslvxy.github.com.git" master:master