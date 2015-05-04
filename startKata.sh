#!/bin/sh

## Clean-up
sh cleanUp.sh

## Initialize workarea
echo "Function A\n  code A.1\n  code A.2\n  code A.3\nEnd\n" > api.txt
echo "Test Case A\n  test A.1\n  test A.2\n  test A.3\nEnd\n" > tests.txt
git add api.txt
git add tests.txt
git commit -m "Function A and tests"

sed -i '/code A.2/c\  change A.2' api.txt
sed -i '/test A.2/c\ test change A.2' tests.txt

echo "Function B\n  code B.1\n  code B.2\n  code B.3\nEnd\n" >> api.txt
echo "Test Case B\n  test B.1\n  test B.2\n  test B.3\nEnd\n" >> tests.txt

cat readme.txt
