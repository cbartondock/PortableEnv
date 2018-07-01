#!/bin/bash
cd bundle
for d in */ ; do
  echo "downloading $d"
  cd $d
  git checkout master
  git submodule update --init
  cd ..
done
cd ..
