echo -n "source path : "
read f1
echo -n "Enter destination : "
read f2
echo -n "Enter filename : "
read file
if [[ ! -f "$f1/$file" ]]; then
	echo "Sorry file not found on source"
	exit 1
fi
#set $(stat "$f1/$file")
#size1=$(echo $4)
#ls -l "$f1/$file|awk {'print $(5)'}
size1=$(stat -c %s "$f1/$file")
if [[ ! -f "$f2/$file" ]]; then
	size2=0
else	
	set $(stat "$f2/$file")
	size2=$(echo $4)
fi
if [[ $size1 -ne $size2 ]]; then
	echo "File copy NOT completely successfully"
	echo -n "Do you wanna copy : "
	read pro
	case $pro in
		[yY]* )	cp "$f1/$file" "$f2/$file" ;;
			* ) echo "Bye-Bye" ;;
	esac
else
	echo "File Copied Successfully"
fi


