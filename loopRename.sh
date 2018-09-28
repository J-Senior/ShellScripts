#!/bin/bash/sh
#Renames files in folder by creation date and loop number
#Used for discs where files have same creation time

INC=000000

for f in *.*; do
   mv -n "$f" `printf %s%06d.%s $(date -r "$f" +"%Y-%m-%d_") ${INC} ${f##*.}`
   INC=`expr $INC + 1`
done
