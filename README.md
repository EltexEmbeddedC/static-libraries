# Статические библиотеки

## Сборка и запуск

1. Необходимо перейти в корневую директорию и выполнить команду ```make``` для сборки всего проекта. При необходимости сборки только библиотеки выполните команду ```make lib```.

2. Исполняемый файл появится в папке ```bin```, объектные файлы в ```build```, статическая библиотека в ```lib```.

3. Для удаления объектных, исполняемых файлов, собранных библиотек необходимо выполнить команду ```make clean```.

## Задание

Реализовать программу калькулятор с функционалом над целыми числами: сложение, вычитание, умножение, деление. При запуске программы на экране
появляется текстовое меню:

```
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
```

Далее пользователь вводит номер пункта меню, вводит параметры и на экран выводится результат выбранной операции. Затем пользователь возвращается в
меню пока не выберет пункт 5. За отрисовку меню и логику калькулятора отвечает модуль ```main.c```. Функционал вынесен в статическую библиотеку ```libcalc.a``` (каждая операция в отдельном модуле (```add.c```, ```sub.c```, ```mul.c```, ```div.c```)). 

## Тестирование

```
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
1
Введите два целых числа для сложения: 10 20
Результат: 10 + 20 = 30
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
2
Введите два целых числа для вычитания: 100 150
Результат: 100 - 150 = -50
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
3
Введите два целых числа для умножения: 12 5
Результат: 12 * 5 = 60
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
4
Введите два целых числа для деления: 5 0
Ошибка: деление на ноль
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
4 
Введите два целых числа для деления: 3 4
Результат: 3 / 4 = 0.750000
1) Сложение
2) Вычитание
3) Умножение
4) Деление
5) Выход
5
Выходим...
```
