#!/usr/bin/env sh

if [ "$#" -ne 1 ]
    then
        echo "Invalid number of arguments"
        exit 1
fi

date="$(date '+%Y-%m-%d')"
title="$(sed '-s' $1.md)"

# content="$(md2html "$1.md")"
# sed "s/$content/{{ content }}/" "$main.template.html" > "$1.html"
