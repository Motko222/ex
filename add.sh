#!/bin/bash

read -p "Repo? " repo
echo "------------------------"

cd scripts;
git clone https://github.com/Motko222/$repo;
chmod +x ~/scripts/$repo/*.sh;
