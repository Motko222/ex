#!/bin/bash

echo "------------------------"
ls ~/scripts | nl
echo "------------------------"
read -p "Repo? " repo

if [[ $repo == ?(-)+([0-9]) ]]
  then
    repo=$(ls ~/scripts | head -$repo | tail -1 )
fi

if [[ $repo == "all" ]]
  then repo=$(ls ~/scripts)
fi

for i in $repo
do
  echo "Updating $i..."
  cd ~/scripts/$i
  git stash push --include-untracked
  git pull
done  

chmod +x -R ~/scripts
