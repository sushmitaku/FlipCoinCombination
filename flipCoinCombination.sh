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

dictionary[HHH]=0
dictionary[HHT]=0
dictionary[HTH]=0
dictionary[THH]=0
dictionary[TTT]=0
dictionary[HTT]=0
dictionary[TTH]=0
dictionary[THT]=0
for (( i=0; i<$limit; i++ ))
do
        coinFlip=$(( (RANDOM%8)+1 ))
        if [ $coinFlip -eq 1 ]
        then
                dictionary[HHH]=$(( ${dictionary[HHH]}+1 ))

        elif [ $coinFlip -eq 2 ]
        then
                dictionary[HHT]=$(( ${dictionary[HHT]}+1 ))

         elif [ $coinFlip -eq 3 ]
         then
                dictionary[HTH]=$(( ${dictionary[HTH]}+1 ))
	
        elif [ $coinFlip -eq 4 ]
        then
                dictionary[THH]=$(( ${dictionary[THH]}+1 ))

         elif [ $coinFlip -eq 5 ]
         then
                dictionary[TTT]=$(( ${dictionary[TTT]}+1 ))
	 elif [ $coinFlip -eq 6 ]
        then
                dictionary[HTT]=$(( ${dictionary[HTT]}+1 ))

         elif [ $coinFlip -eq 7 ]
         then
                dictionary[TTH]=$(( ${dictionary[TTH]}+1 ))


        else
                dictionary[THT]=$(( ${dictionary[THT]}+1 ))
        fi

done


HHH=$(( $(( ${dictionary[HHH]}*100 ))/$limit ))
HHT=$(( $(( ${dictionary[HHT]}*100 ))/$limit ))
HTH=$(( $(( ${dictionary[HTH]}*100 ))/$limit ))
THH=$(( $(( ${dictionary[THH]}*100 ))/$limit ))
TTT=$(( $(( ${dictionary[TTT]}*100 ))/$limit ))
HTT=$(( $(( ${dictionary[HTT]}*100 ))/$limit ))
TTH=$(( $(( ${dictionary[TTH]}*100 ))/$limit ))
THT=$(( $(( ${dictionary[THT]}*100 ))/$limit ))

echo "HHH= $HHH %"
echo "HHT= $HHT %"
echo "HTH= $HTH %"
echo "THH= $THH %"
echo "TTT= $TTT %"
echo "HTT= $HTT %"
echo "TTH= $TTH %"
echo "THT= $THT %"


