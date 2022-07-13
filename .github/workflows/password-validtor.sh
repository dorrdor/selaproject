#!/bin/bash
#date: 6/7/22
#Athor: Dor Ross
counter=0

password="$1"

fi


if (("${#password}" < 10)); then

  echo $(tput setaf 1)"you need at least 10 characters."$(tput sgr0)
  counter=$((counter = 1))

fi

if [[ $password =~ [0-9] ]]; then
  :
else

  echo $(tput setaf 1)"You need to use numbers"$(tput sgr0)
  counter=$((counter = 1))
fi

if [[ $password =~ [a-z] ]]; then
  :
else

  echo $(tput setaf 1)"You need to use lowercase letters"$(tput sgr0) 
  counter=$((counter = 1))

fi
if [[ $password =~ [A-Z] ]]; then
  :
else

  echo $(tput setaf 1)"You need to use uppercase letters"$(tput sgr0)
  counter=$((counter = 1))

fi
if [ "$counter" = 0 ]; then

  echo $(tput setaf 2)exit code 0$(tput sgr0)

else
  echo $(tput setaf 1)exit code 1$(tput sgr0)
fi

