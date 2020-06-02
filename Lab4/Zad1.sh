#! /bin/bash

mkdir $1/A $1/B $1/A/C $1/B/D
touch $1/A/test1
touch $1/B/test2
touch $1/B/obrazek.jpg
touch $1/A/C/obrazek2.png
touch $1/A/C/test3
touch $1/B/D/test4
touch $1/B/D/test5
touch $1/B/D/obrazek3.png

find $1 -type f -iname "*test*" -print | sort | head -n 3

find $1 -name "*.jpg" -o -name "*.png" | while read var1
do
        echo $(realpath $var1 | tr / \|)
done

echo $(find $1 -maxdepth 2 -type f -mmin +1)
find $1 -maxdepth 2 -type f -mmin +1 -exec rm -f {} \;
