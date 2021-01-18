#!/bin/bash

if [ ! -d "themes" ];then
  echo "No themes directory, create it"
  mkdir themes
fi

if [ -d "themes/docsy" ];then
  echo 'Find directoy "themes/docsy", update by "git pull"'
  cd themes/docsy
  git pull
  cd ../../
else
  echo 'Directoy "themes/docsy" not found, create soft link'
  #git clone https://github.com/skyao/docsy.git themes/docsy
  #git clone git@github.com:skyao/docsy.git themes/docsy
  cd themes
  ln -s ../../docsy .
fi



