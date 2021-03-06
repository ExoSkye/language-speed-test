#!/bin/sh
cd bin/

for file in *; do printf "\n\n$file\n"; time -v ./"$file"; done
