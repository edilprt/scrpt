#!/bin/bash
ip=$(wget -qO- ipinfo.io/ip);
echo "Текущий IP $ip";
ct=$(date +%T);
message info "$ct - IP check успешно загружен. Текущий IP: $ip";
  while :; do
 # sleep 60
  cip=$(wget -qO- ipinfo.io/ip);
  d=$(date +%T);
     if [  $ip != $cip  ]; then 
     #echo  "$d: IP изменился. Перезагрузка";
     echo  "$d: IP изменился. Перезагружаю майнер";
     #message info "$d IP изменился. Перезагружаю риг."
     message info "$d IP изменился. Перезагружаю майнер."
     ip=$cip;
     #reboot;
     miner restart;
     else
     echo "$d: IP не изменился. Проверка повторится через 60 сек...";
     sleep 60;
     fi
  done
