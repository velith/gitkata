#!/bin/sh

## Clean-up
sh cleanUp.sh

## Initialize workarea
echo "Some work done on master" > a.txt
git add a.txt
git commit -m "Some work done on master"
echo "\n\nEven more work" >> a.txt
git add a.txt
git commit -m "More work on master"
git checkout -b quickfix HEAD~2
echo "A highly needed quickfix!" > c.txt
git add c.txt
git commit -m "A highly needed quickfix!"

cat readme.txt
