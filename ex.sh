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
    ls ~/scripts/$repo | grep .sh | grep -v ex.sh | sed 's/.sh//g' | nl
    echo "     R  readme"
    echo "------------------------"
    read -p "Action? " action
    echo "------------------------"
    if [[ $action == ?(-)+([0-9]) ]]
      then
        action=$(ls ~/scripts/$repo | grep .sh | grep -v ex.sh | head -$action | tail -1 )
      else
      action=$action.sh
    fi

  else
    action=$2.sh
fi

case $action in
r|R)
  cat ~/scripts/$repo/README.md
;;
*)
  bash ~/scripts/$repo/$action
;;
esac
