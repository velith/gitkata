#!/bin/sh

## Clean-up
sh cleanUp.sh

## Initialize workarea
# A commit on "remote"
git checkout -b remote_changes
echo "Function P\n  code P.1\n  code P.2\n  code P.3\nEnd\n" > a.txt
git add a.txt
git commit -m "The change we wanted"
echo "Function Q\nEnd\n" >> a.txt
git add a.txt
git commit -m "The unwanted change"
# Three commits on master which should be on topic branch
git checkout kata_merged_into_dirty_tree
echo "Function B\n  code B.1\n  code B.2\n  code B.3\nEnd\n" > b.txt
echo "Function C\n  code C.1\n  code C.2\n  code C.3\nEnd\n" > c.txt
git add b.txt
git add c.txt
git commit -m "Implemented awesome feature"
echo "Test Case B\n  test B.1\n  test B.2\n  test B.3\nEnd\n" >> b.txt

# A pull (here just a merge from remote)
git merge remote_changes -m "Merged result"

cat readme.txt
