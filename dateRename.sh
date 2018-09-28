#!/bin/bash/sh
#Renames files in folder by creation date and time

for f in *.*
do
    mv -n "$f" "$(date -r "$f" +"%Y-%m-%d_%H%M%S").${f##*.}"
done
