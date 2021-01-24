#!/bin/zsh
# Finds solutions for NYT's Spelling Bee game
# Change "dictionary" variable to "huge-dict.txt" for more words (but also more false positives)

dictionary="dict.txt"

echo "Please input the key letter: "
read key

echo "Please input the other letters: "
read others

results=$(egrep -w "[$others$key]+{4}" $dictionary | grep -v \' | grep $key)

number=$(echo $results | wc -l)

echo "Found $number words!"
sleep 1

echo $results | less
