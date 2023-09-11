#!/bin/bash

if [ -z $1 ]
  then
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
  else
    repo=$1
fi

for i in $repo
do
  cd ~/scripts/$i
  git pull
done  

chmod +x -R ~/scripts

