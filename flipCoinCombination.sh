Head=1
Tail=0
#Declearing Dictionary
declare -A dictionary
dictionary[H]=0
dictionary[T]=0
read -p "Enter limit" limit
for (( i=0; i<$limit; i++ ))
do
	winner=$(( RANDOM%2 ))
	if [ $winner -eq $Head ]
	then
		dictionary[H]=$(( ${dictionary[H]}+1 ))
	else
		dictionary[T]=$(( ${dictionary[T]}+1 ))

	fi
done
#echo ${dictionary[@]}
headPercentage=$(( $(( ${dictionary[H]}*100 ))/$limit ))
tailPercentage=$(( $(( ${dictionary[T]}*100 ))/$limit ))
echo "H= $headPercentage %"
echo "T= $tailPercentage %"
 

