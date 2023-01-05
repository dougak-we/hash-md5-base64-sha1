#!/bin/bash
for i in $(cat file do john)
do
a=$(echo -n "$i" | md5sum)
b=$(echo "$a" | cut -d" " -f1)
c=$(echo -n "$b" | base64)
d=$(echo -n "$c" | sha1sum)
echo "$i - $d" >> keys.txt
done
