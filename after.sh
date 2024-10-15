#!/bin/bash

# Проверяем, что передано два аргумента
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <имя_файла> <строка>"
    exit 1
fi

file_name="$1"
line_after="$2"

# Проверяем, существует ли файл
if [ ! -f "$file_name" ]; then
    echo "Файл '$file_name' не найден."
    exit 1
fi

# Читаем файл и выводим результат
while IFS= read -r line; do
    echo "$line$line_after"
done < "$file_name"
