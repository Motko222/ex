#!/bin/bash

cd ~

if [ ! -d ~/scripts ]
  then
    mkdir scripts
fi

if [ ! -d ~/logs ]
  then
    mkdir logs
fi

cd scripts
git clone https://github.com/Motko222/ex
chmod +x ~/scripts/ex/*.sh
echo alias ex="bash ~/scripts/ex/ex.sh" >> ~/.bashrc
source ~/.bashrc
echo "------------------------"
echo "Simple script launcher installed. Run 'ex' to open client."
