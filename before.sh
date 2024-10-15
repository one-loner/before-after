#!/bin/bash

# Проверяем, что передано два аргумента
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <имя_файла> <строка>"
    echo "Если нужно записать в файл: $0 <имя_файла> <строка> > output.txt"
    echo "Если нужны пробелы, то пишите строку в кавычках и добавляйте пробел вручную"
    exit 1
fi

file_name="$1"
line_to_prepend="$2"

# Проверяем, существует ли файл
if [ ! -f "$file_name" ]; then
    echo "Файл '$file_name' не найден."
    exit 1
fi

# Читаем файл и выводим результат
while IFS= read -r line; do
    echo "$line_to_prepend$line"
done < "$file_name"
