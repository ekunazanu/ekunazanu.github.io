#!/usr/bin/env sh

if [ "$#" -ne 1 ]
    then
        echo "Invalid number of arguments"
        exit 1
fi

date="$(date '+%Y-%m-%d')"
title="$(head -1 ./resources/blogs/md/"$1.md" | cut -c 3-)"

markdown -f "links,image,html,fencedcode,noext,nocdata,superscript,del,autolink,tabstop" "./resources/blogs/md/$1.md" | tail +3 > "./blogs/$1.html.tmp"
sed -e "26,120d" -e "s/{date}/$date/" -e "s/{title}/$title/" -e "25r ./blogs/$1.html.tmp" "./resources/site/main.template.html" > "./blogs/$1.html"
rm "./blogs/$1.html.tmp"

cat << EOF | sed -i '//r /dev/stdin' "./extras/index.html"
> <li>
> <time>${date}</time>
> <h3><a href="./blogs/$1.html">$title</a></h3>
> </li>
> EOF
