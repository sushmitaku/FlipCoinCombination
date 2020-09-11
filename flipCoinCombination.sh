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
dictionary[HH]=0
dictionary[HT]=0
dictionary[TH]=0
dictionary[TT]=0
for (( i=0; i<$limit; i++ ))
do
        coinFlip=$(( (RANDOM%4)+1 ))
        if [ $coinFlip -eq 1 ]
        then
                dictionary[HH]=$(( ${dictionary[HH]}+1 ))
        
        elif [ $coinFlip -eq 2 ]
        then
                dictionary[HT]=$(( ${dictionary[HT]}+1 ))

         elif [ $coinFlip -eq 3 ]
         then
                dictionary[TH]=$(( ${dictionary[TH]}+1 ))
        else
                dictionary[TT]=$(( ${dictionary[TT]}+1 ))
        fi

done
HH=$(( $(( ${dictionary[HH]}*100 ))/$limit ))
HT=$(( $(( ${dictionary[HT]}*100 ))/$limit ))
TH=$(( $(( ${dictionary[TH]}*100 ))/$limit ))
TT=$(( $(( ${dictionary[TT]}*100 ))/$limit ))
echo "HH= $HH %"
echo "HT= $HT %"
echo "TH= $TH %"
echo "TT= $TT %"


