#!/bin/bash
if (($EUID !=0)); then
     echo Скрипт должен быть запущен от root.
     exit
fi
rm /bin/after
rm /bin/before-after
rm /bin/before
echo "Удаление завершено."
