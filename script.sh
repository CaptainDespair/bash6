#!/bin/bash

echo -n "Enter your name "
read -r login
useradd $login
echo -n "Enter your password "
passwd $login
echo -n "Enter dir to OFS "
read -r directory

PS3="Select the operation: "

select opt in proc EX_OFS calc quit; do

  case $opt in
    proc)
      ps -ef | awk '{print $1}'
      ;;
    EX_OFS)
      ls -l $directory | awk '{print $1}' | cut -c1-1
      ;;
    calc)
      read -p "Enter the number of variables " num
      for ((i=1; i <= $num; i++))
	do
	  read -p "Enter the x$i " x$i
          if [[ $i -eq $num ]] 
          then	
             read -p "Enter the expression " exp
             let "result=$exp"
             echo $result
          fi
     done
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done
