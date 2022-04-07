echo "Enter range:"
read low
read max
sum=0
echo "prime numbers between $low and $max are :"
i=2
while [ $i -le $max ]
do
    flag=1
    j=2    
    while [ $j -lt $i ]
    do
         rem=$(( $i % $j ))
        if [ $rem -eq 0 ]
        then
          flag=0
          break
        fi
    j=$(( $j+1 ))
    done
    if [[ $flag -eq 1 && $i -ge $low ]]
    then
        echo "$i"
        sum=$(( $sum + $i ))
    fi
i=$(( $i+1 ))
done
echo "Sum is $sum"
