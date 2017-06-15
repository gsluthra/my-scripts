#! /usr/bin/env bash

# SCRIPT TO PERFORM GIT PULL REBASE OF ALL SUBDIRECTORIES
# --------------------------------------------------------

for dir in ./*/
do
  cd ${dir}
  git status >/dev/null 2>&1
  # check if exit status of above was 0, indicating we're in a git repo
  [ $(echo $?) -eq 0 ] && echo "Updating ${dir%*/}..." && git pull --rebase
  echo "-------------------------"
  cd ..
done
