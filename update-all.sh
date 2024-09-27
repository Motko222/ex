#!/bin/bash

for i in $(ls ~/scripts)
do
  echo "------------------------" 
  if [ -d ~/scripts/$i/.git ]
    then
      echo "Updating $i..."
      cd ~/scripts/$i
      git stash push --include-untracked
      git pull
      chmod +x *.sh
    else
      echo "Ignoring $i..."
  fi
done 
