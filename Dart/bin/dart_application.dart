import 'dart:io';
import 'dart:math';

//Задача 1: Четное или нечетное число
//Условие:
//Пользователь вводит целое число. Программа должна вывести, является ли это число четным или нечетным.

// void main() {
//   stdout.write("Введите число: ");
//   int num = int.parse(stdin.readLineSync()!);
  
//   if (num % 2 == 0) {
//     print("Это число четное.");
//   } else {
//     print("Это число нечетное.");
//   }
// }

//Задача 2: Минимальное из трех чисел
//Условие:
//Пользователь вводит три целых числа. Программа должна найти и вывести минимальное из них.

// void main() {
//   stdout.write("Введите первое число: ");
//   int a = int.parse(stdin.readLineSync()!);
  
//   stdout.write("Введите второе число: ");
//   int b = int.parse(stdin.readLineSync()!);
  
//   stdout.write("Введите третье число: ");
//   int c = int.parse(stdin.readLineSync()!);
  
//   if (a < b && a < c) {
//     print("Первое число минимальное.");
//   } else if (b < a && b < c) {
//     print("Второе число минимальное.");
//   } else {
//     print("Третье число минимальное.");
//   }
// }

//Задача 3: Таблица умножения
//Условие:
//Напишите программу, которая выводит таблицу умножения на 5 (от 1 до 10).

// void main() {
//   int a = 5;
//   print("Таблица умножения на $a");
  
//   for (int b = 1; b <= 10; b++) {
//     int result = a * b;
//     print("$b * $a = $result");
//   }
// }

//Задача 4: Сумма чисел от 1 до N
//Условие:
//Пользователь вводит целое число N. Программа должна вывести сумму всех чисел от 1 до N.

// void main() {
//   stdout.write("Введите число: ");
//   int num = int.parse(stdin.readLineSync()!);
//   int result = 0;
  
//   for (int i = 1; i <= num; i++) {
//     result += i;
//   }
  
//   print("Сумма всех чисел: $result");
// }

//Задача 5: Число Фибоначчи
//Условие:
//Пользователь вводит целое число N. Программа должна вывести первые N чисел Фибоначчи.

// void main() {
//   stdout.write("Введите число: ");
//   int n = int.parse(stdin.readLineSync()!);
//   int a = 0, b = 1;
  
//   for (int i = 1; i <= n; i++) {
//     print(a);
//     int next = a + b;
//     a = b;
//     b = next;
//   }
// }

//Задача 6: Проверка простого числа
//Условие:
//Пользователь вводит целое число. Программа должна проверить, является ли это число простым (делится только на 1 и само на себя).

// void main() {
//   stdout.write("Введите число: ");
//   int number = int.parse(stdin.readLineSync()!);
  
//   if (isPrime(number)) {
//     print("$number - простое число");
//   } else {
//     print("$number - не простое число");
//   }
// }

// bool isPrime(int num) {
//   if (num <= 1) {
//     return false;
//   } else if (num == 2) {
//     return true;
//   } else {
//     for (int i = 2; i < num; i++) {
//       if (num % i == 0) {
//         return false;
//       }
//     }
//   }
//   return true;
// }

//Задача 7: Обратный порядок чисел
//Условие:
//Пользователь вводит целое число N. Программа должна вывести числа от N до 1 в обратном порядке.

// void main() {
//   stdout.write("Введите число: ");
//   int n = int.parse(stdin.readLineSync()!);
  
//   for (int i = n; i >= 1; i--) {
//     print(i);
//   }
// }

//Задача 8: Сумма четных чисел
//Условие:
//Пользователь вводит два целых числа A и B. Программа должна найти сумму всех четных чисел в диапазоне от A до B (включительно).

// void main() {
//   stdout.write("Введите первое целое число A: ");
//   int A = int.parse(stdin.readLineSync()!);
  
//   stdout.write("Введите второе целое число B: ");
//   int B = int.parse(stdin.readLineSync()!);
  
//   int sum = 0;
//   int start = A < B ? A : B;
//   int end = A > B ? A : B;

//   for (int i = start; i <= end; i++) {
//     if (i % 2 == 0) {
//       sum += i;
//     }
//   }

//   print("Сумма четных чисел в диапазоне от $A до $B равна: $sum");
// }


//Задача 9: Реверс строки
//Условие:
//Пользователь вводит строку. Программа должна вывести эту строку в обратном порядке.

// void main() {
//   stdout.write("Введите строку: ");
//   String s = stdin.readLineSync()!;
  
//   String reverse = s.split('').reversed.join('');
//   print("Строка в обратном порядке: $reverse");
// }

// Задача 10: Количество цифр в числе
// Условие:
// Пользователь вводит целое число. Программа должна вывести количество цифр в этом числе.

// void main() {
//   print('Введите целое число:');
//   String? input = stdin.readLineSync();

//   if (input != null && input.isNotEmpty) {
//     String number = input.replaceAll('-', '');
    
//     int digitCount = number.length;

//     print('Количество цифр в числе: $digitCount');
//   } else {
//     print('Вы ввели некорректное значение.');
//   }
// }

//Задача 11: Факториал числа
//Условие:
//Пользователь вводит целое число N. Программа должна вычислить факториал этого числа (N!).

// void main() {
//   stdout.write("Введите число: ");
//   int a = int.parse(stdin.readLineSync()!);
//   int result = 1;

//   if (a == 0) {
//     print("Факториал числа $a = 1");
//   } else {
//     for (int i = 1; i <= a; i++) {
//       result *= i;
//     }
//     print("Факториал числа $a = $result");
//   }
// }

//Задача 12: Сумма цифр числа
//Условие:
//Пользователь вводит целое число. Программа должна найти сумму всех цифр этого числа.

// void main() {
//   stdout.write("Введите число: ");
//   int n = int.parse(stdin.readLineSync()!);
//   int sum = 0;

//   while (n > 0) {
//     sum += n % 10;
//     n ~/= 10; 
//   }

//   print("Сумма цифр числа: $sum");
// }

//Задача 13: Палиндром
//Условие:
//Пользователь вводит строку. Программа должна проверить, является ли эта строка палиндромом (читается одинаково слева направо и справа налево).

// void main() {
//   stdout.write("Введите строку: ");
//   String input = stdin.readLineSync()!;
  
//   String cleanedInput = input.replaceAll(RegExp(r'\s+'), '').toLowerCase();
//   bool isPalindrome = checkPalindrome(cleanedInput);

//   if (isPalindrome) {
//     print("Строка является палиндромом.");
//   } else {
//     print("Строка не является палиндромом.");
//   }
// }

// bool checkPalindrome(String str) {
//   int left = 0;
//   int right = str.length - 1;

//   while (left < right) {
//     if (str[left] != str[right]) {
//       return false;
//     }
//     left++;
//     right--;
//   }
//   return true;
// }

//Задача 14: Найти максимальное число в массиве
//Условие:
//Пользователь вводит размер массива и элементы массива. Программа должна найти и вывести максимальное число в массиве.

// void main() {
//   stdout.write("Введите размер массива: ");
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> arr = [];

//   for (int i = 0; i < n; i++) {
//     stdout.write("Введите элемент массива ${i + 1}: ");
//     arr.add(int.parse(stdin.readLineSync()!));
//   }

//   int max = arr[0];
//   for (int i = 1; i < n; i++) {
//     if (arr[i] > max) {
//       max = arr[i];
//     }
//   }

//   print("Максимальное число в массиве: $max");
// }

//Задача 15: Сумма всех элементов массива
//Условие:
//Пользователь вводит размер массива и его элементы. Программа должна вычислить и вывести сумму всех элементов массива.

// void main() {
//   stdout.write("Введите размер массива: ");
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> arr = [];
//   int sum = 0;

//   for (int i = 0; i < n; i++) {
//     stdout.write("Введите элемент массива ${i + 1}: ");
//     arr.add(int.parse(stdin.readLineSync()!));
//     sum += arr[i];
//   }

//   print("Сумма чисел в массиве: $sum");
// }

//Задача 16: Количество положительных и отрицательных чисел
//Условие:
//Пользователь вводит размер массива и его элементы. Программа должна подсчитать и вывести количество положительных и отрицательных чисел в массиве.

// void main() {
//   stdout.write("Введите размер массива: ");
//   int n = int.parse(stdin.readLineSync()!);
//   List<int> arr = [];
//   int countPositive = 0;
//   int countNegative = 0;

//   for (int i = 0; i < n; i++) {
//     stdout.write("Введите элемент массива ${i + 1}: ");
//     arr.add(int.parse(stdin.readLineSync()!));
//     if (arr[i] > 0) {
//       countPositive++;
//     } else if (arr[i] < 0) {
//       countNegative++;
//     }
//   }

//   print("Количество положительных чисел: $countPositive");
//   print("Количество отрицательных чисел: $countNegative");
// }

//Задача 17: Простые числа в диапазоне
//Условие:
//Пользователь вводит два целых числа A и B. Программа должна вывести все простые числа в этом диапазоне (включительно).

// void main() {
//   stdout.write("Введите первое целое число (A): ");
//   int A = int.parse(stdin.readLineSync()!);
//   stdout.write("Введите второе целое число (B): ");
//   int B = int.parse(stdin.readLineSync()!);

//   if (A > B) {
//     print("Ошибка: Первое число должно быть меньше или равно второму.");
//   } else {
//     print("Простые числа в диапазоне от $A до $B:");
//     for (int i = A; i <= B; i++) {
//       if (isPrime(i)) {
//         print(i);
//       }
//     }
//   }
// }

// bool isPrime(int number) {
//   if (number <= 1) return false;
//   if (number == 2) return true;
//   for (int i = 2; i <= sqrt(number).toInt(); i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }

//Задача 18: Подсчет гласных и согласных в строке
//Условие:
//Пользователь вводит строку. Программа должна подсчитать и вывести количество гласных и согласных букв в этой строке.

// void main() {
//   stdout.write("Введите строку: ");
//   String inputString = stdin.readLineSync()!;

//   int vowelsCount = 0;
//   int consonantsCount = 0;

//   for (int i = 0; i < inputString.length; i++) {
//     String character = inputString[i].toLowerCase();
//     if (RegExp(r'[a-zA-Zа-яА-Я]').hasMatch(character)) {
//       if (isVowel(character)) {
//         vowelsCount++;
//       } else {
//         consonantsCount++;
//       }
//     }
//   }

//   print("Количество гласных букв: $vowelsCount");
//   print("Количество согласных букв: $consonantsCount");
// }

// bool isVowel(String character) {
//   return 'aeiouаеёиоуыэюя'.contains(character);
// }

//Задача 19: Перестановка слов в строке
//Условие:
//Пользователь вводит строку, состоящую из нескольких слов. Программа должна вывести слова в обратном порядке.

// void main() {
//   stdout.write("Введите строку: ");
//   String text = stdin.readLineSync()!;
//   List<String> words = text.split(" ");
//   String result = words.reversed.join(" ");
//   print("Строка в обратном порядке: $result");
// }

//Задача 20: Число Армстронга
//Условие:
//Пользователь вводит целое число. Программа должна проверить, является ли это число числом Армстронга (сумма цифр в степени, равной количеству цифр, равна самому числу).

// void main() {
//   stdout.write("Введите целое число: ");
//   int number = int.parse(stdin.readLineSync()!);
//   int originalNumber = number;
//   int sum = 0;

//   int numberOfDigits = originalNumber.toString().length;

//   while (number > 0) {
//     int digit = number % 10;
//     sum += pow(digit, numberOfDigits).toInt();
//     number ~/= 10;
//   }

//   if (sum == originalNumber) {
//     print("$originalNumber является числом Армстронга.");
//   } else {
//     print("$originalNumber не является числом Армстронга.");
//   }
// }