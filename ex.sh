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

  else
    repo=$1
fi

if [ -z $2 ]
  then
    echo "------------------------"
    ls ~/scripts/$repo/*.sh | sed 's/.sh//g' | sed 's/.git//g' | nl
    echo "------------------------"
    read -p "Action? " action
    echo "------------------------"
    if [[ $action == ?(-)+([0-9]) ]]
      then
        action=$(ls ~/scripts/$repo/*.sh | sed 's/.sh//g' | sed 's/.git//g' | head -$action | tail -1 )
    fi

  else
    action=$2
fi

case $action in
"README.md"|"readme" )
  cat ~/scripts/$repo/$action
;;
*)
  bash ~/scripts/$repo/$action.sh
;;
esac
