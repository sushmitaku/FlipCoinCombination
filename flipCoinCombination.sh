Head=1
Tail=0
winner=$(( RANDOM %2 ))
if [ $winner -eq $Head ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi
