#include <stdio.h>
#include "lib/calc.h"

void run();
void print_menu();
void do_operation(int choice);

int main() {
  run();
}

void run() {
  int choice;

  do {
    print_menu();
    scanf("%d", &choice);
    do_operation(choice);
  } while (choice != 5);
}

void print_menu() {
  printf(
      "1) Сложение\n"
      "2) Вычитание\n"
      "3) Умножение\n"
      "4) Деление\n"
      "5) Выход\n");
}

void do_operation(int choice) {
  int a, b;
  short error;
  double result;

  switch (choice) {
    case 1:
      printf("Введите два целых числа для сложения: ");
      scanf("%d %d", &a, &b);
      printf("Результат: %d + %d = %d\n", a, b, add(a, b));
      break;
    case 2:
      printf("Введите два целых числа для вычитания: ");
      scanf("%d %d", &a, &b);
      printf("Результат: %d - %d = %d\n", a, b, sub(a, b));
      break;
    case 3:
      printf("Введите два целых числа для умножения: ");
      scanf("%d %d", &a, &b);
      printf("Результат: %d * %d = %d\n", a, b, mul(a, b));
      break;
    case 4:
      printf("Введите два целых числа для деления: ");
      scanf("%d %d", &a, &b);
      result = div(a, b, &error);
      if (error) {
        printf("Ошибка: деление на ноль\n");
      } else {
        printf("Результат: %d / %d = %f\n", a, b, result);
      }
      break;
    case 5:
      printf("Выходим...\n");
      break;
    default:
      printf("Ошибка! Неверное значение пункта меню.\n");
      break;
  }
}
