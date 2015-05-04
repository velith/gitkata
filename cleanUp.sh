#!/bin/sh

git checkout kata_forgot_to_branch
git reset --hard origin/kata_forgot_to_branch
git branch -D topic/branch
git branch -D remote_master
