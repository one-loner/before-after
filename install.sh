#!/bin/bash
if (($EUID !=0)); then
     echo Скрипт должен быть запущен от root.
     exit
fi
cp after.sh /bin/after
cp before-after.sh /bin/before-after
cp before.sh /bin/before
chmod +x /bin/after
chmod +x /bin/before-after
chmod +x /bin/before
echo "Установка завершена."
