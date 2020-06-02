#! /bin/bash

mkdir $1/A $1/B $1/A/C $1/B/D
touch $1/A/test1
touch $1/B/test2
touch $1/B/obrazek.txt
touch $1/A/C/obrazek2.txt
touch $1/A/C/test3
touch $1/B/D/test4
touch $1/B/D/test5
touch $1/B/D/obrazek3.dat

if [ -f $1/result.dat ]; then
        rm -f $1/result.dat
fi

find $1  -name "*.txt" -o -name "*.dat" -a -size -1k | while read var1
do
        echo -n $(realpath $var1) >> $1/result.dat
        echo -n "|" >> $1/result.dat
        echo -n $(date +"%D") >> $1/result.dat
        echo -n "|" >> $1/result.dat
        echo $(date +"%T") >> $1/result.dat
done


cat $1/result.dat | cut -f 2 -d '.' | cut -f 1,3 -d "|" | cut -c 1-3,8-9

