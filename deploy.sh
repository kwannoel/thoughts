#!/usr/bin/env bash

stack exec thoughts rebuild
git checkout -b master
mkdir docs
cp -a _site/* docs -r
git add -A
git commit -m 'Publish.'
git push origin master -f
git checkout develop
git branch -D master
git stash pop
