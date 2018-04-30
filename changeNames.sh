
read -p 'What would you like to replace?: ' text1
read -p 'What would you like to replace it with?: ' text2
read -p 'Would you like to keep the original file? (y/n):' keep

if [ $keep == "y" ]
then
	for old in $(ls | grep $text1);
	do
		cp $old $(echo $old | sed s/$text1/$text2/)
	done
else
	for old in $(ls | grep $text1);
	do
		mv $old $(echo $old | sed s/$text1/$text2/)
	done
fi
