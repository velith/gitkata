#!/bin/sh

git checkout kata_merged_into_dirty_tree
git reset --hard origin/kata_merged_into_dirty_tree
git branch -D remote_changes
