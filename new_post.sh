#!/bin/sh -ex

# concatenate all parameters into one string
params="$*"

# convert first parameter to underscore and all lowercase
# make all non-alphanumeric characters into underscores
# strip leading and trailing underscores
title=$(echo $params | tr '[:upper:]' '[:lower:]' | tr -c '[:alnum:]' '_' | sed 's/^_//;s/_$//')

filename="$(date +'%Y-%m-%d')-$title.markdown"

# replace DATE with current date in the template in format 2024-02-28 13:10:12 +0200
cat _post_template.markdown | sed "s/DATE/$(date +'%Y-%m-%d %H:%M:%S %z')/" | sed "s/TITLE/$params/"  > _posts/$filename