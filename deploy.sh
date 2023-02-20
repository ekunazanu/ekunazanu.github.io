#!/usr/bin/env sh
# This is a dirty shell script but should be more than good enough.
# However in case I do have free time, I want to write a C impelementaion
# Reference implementation:
# https://github.com/mity/md4c/blob/master/md2html/md2html.c

if [ "$#" -ne 2 ]
    then
        echo "Invalid number of arguments. Input must be name of the markdown file, followed by title."
        exit 1
fi

date="$(date '+%Y-%m-%d')"
title="$2"

echo "Date set to: $date"
echo "Title set to: $title"

md2html --fpermissive-autolinks --ftables --fstrikethrough "./resources/blog/$1.md" | tidy -i --indent-spaces 4 -q --wrap 0 --vertical-space yes --show-body-only yes | tail +3 > "./blogs/$1.html.tmp" && echo "Created $1.html.tmp from template"

sed -e "29r ./blogs/$1.html.tmp" -e "29,160d" -e "s/{date}/$date/" -e "s/{title}/$title/" "./resources/blog/template.html" > "./blogs/$1.html" && echo "Added header and footer"

rm "./blogs/$1.html.tmp" && echo "Removed $1.html.tmp"

sed -i "28i <li>\n    <time>$date</time>\n    <a href=\"/blogs/$1.html\">$title</a>\n</li>" "./extras/index.html" && echo "Appended to index.html"
