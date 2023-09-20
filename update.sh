#!/bin/bash

ls ~/scripts | nl
#echo "------------------------"
echo "     a  update all"
echo "------------------------"
read -p "Repo? " repo

if [[ $repo == ?(-)+([0-9]) ]]
  then
    repo=$(ls ~/scripts | head -$repo | tail -1 )
fi

case $repo in
  a|A) repo=$(ls ~/scripts) ;;
esac

for i in $repo
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
