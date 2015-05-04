#!/bin/sh

## Clean-up
sh cleanUp.sh

## Initialize workarea
git checkout -b pi
git remote add example https://github.com/velith/locate-error.git
git fetch example
git merge example/master~4 -m "merged"
git remote remove example

cat readme.txt
