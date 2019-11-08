#!/bin/bash

sudo apt-get update

apt-get --print-uris install python3-distutils | grep "^'" | sed "s/^'\([^']*\)'.*$/\1/g" > p3_utils.deps
apt-get --print-uris install tcl8.6-dev | grep "^'" | sed "s/^'\([^']*\)'.*$/\1/g" > tcl.deps
apt-get --print-uris install xdot | grep "^'" | sed "s/^'\([^']*\)'.*$/\1/g" > xdot.deps

for i in $(cat p3_utils.deps) ; do wget -nv $i ; done
for i in $(cat tcl.deps) ; do wget -nv $i ; done
for i in $(cat xdot.deps) ; do wget -nv $i ; done
