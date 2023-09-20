#!/bin/bash

if [ -z $1 ]
  then 
    read -p "Repo? " repo
    echo "------------------------"
  else 
    repo=$1
fi

cd ~/scripts;
git clone https://github.com/Motko222/$repo;
chmod +x ~/scripts/$repo/*.sh;
