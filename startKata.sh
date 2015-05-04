#!/bin/sh

## Clean-up
sh cleanUp.sh

## Initialize workarea
# A commit on "remote"
git checkout -b remote_master
echo "Function P\n  code P.1\n  code P.2\n  code P.3\nEnd\n" > a.txt
git add a.txt
git commit -m "Implemented function P"
# Three commits on master which should be on topic branch
git checkout kata_forgot_to_branch
echo "Function A\n  code A.1\n  code A.2\n  code A.3\nEnd\n" > a.txt
git add a.txt
git commit -m "Implemented function A"
echo "Function B\n  code B.1\n  code B.2\n  code B.3\nEnd\n" > b.txt
git add b.txt
git commit -m "Implemented function B"
echo "Function C\n  code C.1\n  code C.2\n  code C.3\nEnd\n" > c.txt
git add c.txt
git commit -m "Implemented function C"

# A pull (here just a merge from remote)
git merge remote_master
git branch -D remote_master

cat readme.txt
