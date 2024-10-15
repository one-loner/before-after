#!/bin/bash

# Проверяем, что передано два аргумента
if [ "$#" -ne 3 ]; then
    echo "Использование: $0 <имя_файла> <строка до> <строка после>"
    echo "Если нужно записать в файл: $0 <имя_файла> <строка до> <строка после> > output.txt"
    echo "Если нужны пробелы, то пишите строку в кавычках и добавляйте пробел вручную"
    exit 1
fi

file_name="$1"
line_to_prepend="$2"
line_after="$3"
# Проверяем, существует ли файл
if [ ! -f "$file_name" ]; then
    echo "Файл '$file_name' не найден."
    exit 1
fi

# Читаем файл и выводим результат
while IFS= read -r line; do
    echo "$line_to_prepend$line$line_after"
done < "$file_name"
