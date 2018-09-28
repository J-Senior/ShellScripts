#!/bin/bash/sh
#Renames files in folder by creation date using exif data
#Requires exiftool

sudo apt-get update
sudo apt-get install exiftool
exiftool '-FileName<DateTimeOriginal' -d "%Y-%m-%d_%H%M%S%%-c.%%e" "$PWD"/*