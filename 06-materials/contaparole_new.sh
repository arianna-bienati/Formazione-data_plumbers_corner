#!bin/zsh

file=$1

cat $file | tr " " "\n" | sort | uniq -c | sort -rn | sed -E "s/^\s*//g" | tr " " "\t"