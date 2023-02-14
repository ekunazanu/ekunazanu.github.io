#!/usr/bin/env sh

if [ "$#" -ne 1 ]
    then
        echo "Invalid number of arguments"
        exit 1
fi

date="$(date '+%Y-%m-%d')"
title="$(head -1 ./resources/blogs/md/"$1.md" | cut -c 3-)"

markdown -f "links,image,html,fencedcode,noext,nocdata,superscript,del,autolink,tabstop" "./resources/blogs/md/$1.md" | tail +3 > "./blogs/$1.html.tmp"
sed -e "25r ./blogs/$1.html.tmp" -e "s/{date}/$date/" -e "s/{title}/$title/" "./resources/site/main.template.html" > "./blogs/$1.html"
rm "./blogs/$1.html.tmp"

sed -i "25r" "./extras/index.html"
