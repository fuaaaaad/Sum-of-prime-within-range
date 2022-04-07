#/bin/bash


while true; do
sum=0
read -p 'Start range: ' start
    if [[ $start -ge 100 ]] && [[ $start -le 200 ]]; then
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
     if [ `expr $start % $i` -eq 0 ]; then
        flag=0
        break
    else
     i=`expr $i + 1`
    fi
    done
  if [ $flag -eq 1 ]
  then
  sum=$(($sum+$start))
  echo -e "\t$start\c"
  fi
  start=`expr $start + 1`
  done 
echo -e "\n Sum is: $sum"
exit 0
