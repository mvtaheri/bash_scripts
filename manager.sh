#! /bin/bash

read -p "Enter id:" input_id
 echo  $input_id
while IFS="," read -r id city name phone price address
do

    # echo  $name $id  will get $price*.05 bonus
if [[ $id -eq $input_id ]]
 then
   bouns=$(($price*5))
   # bouns='$price*0.5'
   echo  $name will get  bonus $bouns
fi
done < <(tail -n +1 employee.csv)
