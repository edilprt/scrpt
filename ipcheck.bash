#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.

#!/bin/bash
ip=$(wget -qO- ipinfo.io/ip);
  while :; do
  sleep 60
  cip=$(wget -qO- ipinfo.io/ip);
  d=$(date +%T);
     if [  $ip != $cip  ]; then 
     echo  ["$d: IP изменился. Перезагрузка";
     shutdown -r;
     else;
     echo ["$d: IP не изменился. Проверка повторится через 60 сек...]";
     fi
  done