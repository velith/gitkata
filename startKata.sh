#!/bin/sh

## Clean-up
sh cleanUp.sh

echo "This " > c1.txt
git add c1.txt
git commit -m "Initial commit (not really)"

echo "should " >> c1.txt
git add c1.txt
git commit -m "Second commit"

echo "be " >> c1.txt
git add c1.txt
git commit -m "Third commit"

echo "based on " >> c1.txt
git add c1.txt
git commit -m "Fourth commit"

echo "a new commit " >> c1.txt
git add c1.txt
git commit -m "Fifth commit"

cat readme.txt
