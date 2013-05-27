#!/bin/bash
echo "Enter the path :"
read n
cd $n
for dir in {a..z} {A..Z} {0..9}
do
	for file in `ls $dir*.*`
	do
		num=`echo $file|wc -c`
		if [[ $num -gt 2 ]] 
		then
			mkdir $dir
			mv $file $dir/$file
			
		fi
	done
done
for a in *; do
	mv $a ${a^^}
done