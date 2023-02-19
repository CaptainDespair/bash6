#!/bin/bash

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
      read -p "Enter the expression " exp
      func_exp () { awk "BEGIN{ print $exp}" ;}
      func_exp "$exp"
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done