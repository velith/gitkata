#!/bin/sh

## Clean-up
sh cleanUp.sh

## Create commits
# Function A
git checkout -b function-a
echo "Function A\n  code line A.1\n  code line A.2\n  code line A.3\nEnd" > a.txt
git add a.txt
git commit -m "Implemented function A"
# Test for Function A
git checkout -b function-test-a
echo "TestFunction A\n  test line A.1\n  test line A.2\n  test line A.3\nEnd" >> a.txt
git add a.txt
git commit -m "Tests for function A"
## Initialize workarea
# Function B on 'master'
git checkout kata_lost_change_after_merge
git merge function-a
echo "Function B\n  code line B.1\n  code line B.2\n  code line B.3\nEnd" > b.txt
git add b.txt
git commit -m "Implemented function B"
# Improved function A on 'master'
sed -i "/code line A.3/c\  change line A.3" a.txt
git add a.txt
git commit -m "Improved function A --- This is what we wanted to keep, but was lost"
# Unwanted change
git merge function-test-a -m "Automatic merge"
sed -i '/code line B.2/c\' b.txt
git add b.txt
git commit -m "Removed code from function B --- This is what we wanted to revert"
# Resets
git reset --hard HEAD^1
git reset --hard HEAD^1
git reset --hard HEAD^1
git merge function-test-a -m "Automatic merge"
echo "TestFunction A2\n  test line A.2.1\n  test line A.2.2\n  test line A.2.3\nEnd" >> a.txt
git add a.txt
git commit -m "Test case for function A"

# Remove branches
git branch -d function-a
git branch -d function-test-a
cat readme.txt
