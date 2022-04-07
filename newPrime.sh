#/bin/bash


while true; do
sum=0
read -p 'Start range: ' start
    if [[ $start -ge 100 ]] && [[ $start -le 200 ]]; then  #Starting value must be between 100-200
break
else
echo "Invalid start range value. Start range must be an integer greater than 1. Please try again."
fi
done
read -p 'End range: ' end ####
    while [ $start -lt $end ] 
do
    i=2 flag=1
    while [ $i -lt $start ] 
     do
     if [ `expr $start % $i` -eq 0 ]; then  #Checks if the number is divisible by any number from i=2 to i=start-1
        flag=0 #If divisible, flag is set to 0 and exits the loop
        break
    else
     i=`expr $i + 1`
    fi
    done
  if [ $flag -eq 1 ] #Checks if the value of flag is 1. 
  then
  sum=$(($sum+$start)) #If 1, value added to sum value
  echo -e "\t$start\c" #Prints the prime number
  fi
  start=`expr $start + 1`
  done 
echo -e "\n Sum is: $sum" #Prints sum
exit 0
