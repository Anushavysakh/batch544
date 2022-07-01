declare -a array1
declare -a array2
for ((i=0;i<=9;i++))
do
        array1[i]=$(($RANDOM%900+100))
done
for ((i=0;i<=9;i++))
do
        array2[i]=${array1[i]};
done
for ((i=0;i<=9;i++))
do
        for ((j=0;j<=9;j++))
        do
                if [[ ${array1[i]} -le ${array1[j]} ]]
                then
                        temp=${array1[i]}
                        array1[i]=${array1[j]}
                        array1[j]=${temp}
                fi
        done
done
echo "Elements of array are "
echo ${array2[@]}
echo "Element after sort "
echo ${array1[@]}
echo "Second smallest elemet is "
echo ${array1[1]}
echo "Second largest number is"
echo ${array1[8]}
