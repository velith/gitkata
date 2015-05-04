#!/bin/sh

git checkout kata_sudden_quickfix_on_remote
git reset --hard origin/kata_sudden_quickfix_on_remote
git branch -D quickfix
