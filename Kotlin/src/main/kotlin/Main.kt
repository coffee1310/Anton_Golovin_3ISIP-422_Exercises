import java.time.format.DateTimeParseException
import java.time.LocalDate
import java.time.format.DateTimeFormatter

fun Exercise1() {
    try {
        val max = findMax(5, 10)
        println("Максимальное число: $max")
    } catch (e: Exception) {
        println("Ошибка: ${e.message}")
    }
}

fun findMax(a: Int, b: Int): Int {
    if (a == b) {
        throw Exception("Числа равны, нельзя определить максимум.")
    }
    return if (a > b) a else b
}

fun Exercise2() {
    try {
        val result = divide(10, 0)
        println("Результат деления: $result")
    } catch (e: ArithmeticException) {
        println("Ошибка: ${e.message}")
    }
}

fun divide(a: Int, b: Int): Double {
    if (b == 0) {
        throw ArithmeticException("Недопустимо делить на ноль.")
    }
    return a.toDouble() / b
}

fun Exercise3() {
    try {
        val result = convertToInt("123a")
        println("Конвертированное число: $result")
    } catch (e: NumberFormatException) {
        println("Ошибка: ${e.message}")
    }
}

fun convertToInt(str: String): Int {
    return str.toIntOrNull() ?: throw NumberFormatException("Строку '$str' невозможно преобразовать в число.")
}

fun Exercise4() {
    try {
        checkAge(151)
        println("Возраст корректен.")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkAge(age: Int) {
    if (age < 0 || age > 150) {
        throw IllegalArgumentException("Некорректный возраст: $age. Возраст должен быть от 0 до 150.")
    }
}

fun Exercise5() {
    try {
        val result = sqrtOfNumber(-16)
        println("Корень из числа: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun sqrtOfNumber(number: Int): Double {
    if (number < 0) {
        throw IllegalArgumentException("Невозможно найти корень из отрицательного числа.")
    }
    return Math.sqrt(number.toDouble())
}

fun Exercise6() {
    try {
        val result = factorial(-5)
        println("Факториал числа: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun factorial(n: Int): Int {
    if (n < 0) {
        throw IllegalArgumentException("Невозможно вычислить факториал для отрицательного числа.")
    }
    return if (n == 0) 1 else n * factorial(n - 1)
}

fun Exercise7() {
    try {
        val numbers = intArrayOf(1, 2, 3, 0, 5)
        checkForZeros(numbers)
        println("Массив не содержит нулей.")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkForZeros(arr: IntArray) {
    if (arr.contains(0)) {
        throw IllegalArgumentException("Массив содержит нули.")
    }
}

fun Exercise8() {
    try {
        val result = power(2, -3)
        println("Результат: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun power(base: Int, exponent: Int): Int {
    if (exponent < 0) {
        throw IllegalArgumentException("Степень не может быть отрицательной.")
    }
    return Math.pow(base.toDouble(), exponent.toDouble()).toInt()
}

fun Exercise9() {
    try {
        val result = trimString("Hello, world!", 15)
        println("Обрезанная строка: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun trimString(str: String, length: Int): String {
    if (length > str.length) {
        throw IllegalArgumentException("Число символов больше длины строки.")
    }
    return str.take(length)
}

fun Exercise10() {
    try {
        val numbers = intArrayOf(1, 2, 3, 4, 5)
        val result = findElement(numbers, 6)
        println("Элемент найден: $result")
    } catch (e: NoSuchElementException) {
        println("Ошибка: ${e.message}")
    }
}

fun findElement(arr: IntArray, element: Int): Int {
    if (element !in arr) {
        throw NoSuchElementException("Элемент $element не найден в массиве.")
    }
    return element
}

fun Exercise11() {
    try {
        val result = toBinary(10)
        println("Двоичное представление: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun toBinary(number: Int): String {
    if (number < 0) {
        throw IllegalArgumentException("Отрицательное число не может быть преобразовано в двоичную систему.")
    }
    return Integer.toBinaryString(number)
}

fun Exercise12() {
    try {
        val result = checkDivisibility(10, 0)
        println("Результат деления: $result")
    } catch (e: ArithmeticException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkDivisibility(num1: Int, num2: Int): Boolean {
    if (num2 == 0) {
        throw ArithmeticException("На ноль делить нельзя.")
    }
    return num1 % num2 == 0
}

fun Exercise13() {
    try {
        val list = listOf(10, 20, 30, 40, 50)
        val result = getElementByIndex(list, 5)
        println("Элемент: $result")
    } catch (e: IndexOutOfBoundsException) {
        println("Ошибка: ${e.message}")
    }
}

fun getElementByIndex(list: List<Int>, index: Int): Int {
    if (index !in list.indices) {
        throw IndexOutOfBoundsException("Индекс $index выходит за пределы списка.")
    }
    return list[index]
}

fun Exercise14() {
    try {
        val result = checkPassword("12345")
        println("Пароль подходящий")
    } catch (e: WeakPasswordException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkPassword(password: String) {
    if (password.length < 8) {
        throw WeakPasswordException("Пароль должен содержать минимум 8 символов.")
    }
}

class WeakPasswordException(message: String) : Exception(message)

fun Exercise15() {
    try {
        val result = checkDate("25.12.2025")
        println("Дата корректна: $result")
    } catch (e: DateTimeParseException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkDate(date: String): Boolean {
    val formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy")
    try {
        LocalDate.parse(date, formatter)
    } catch (e: DateTimeParseException) {
        throw DateTimeParseException("Неверный формат даты: $date", date, 0)
    }
    return true
}

fun Exercise16() {
    try {
        val result = concatenateStrings("Hello, ", "World!")
        println("Результат объединения: $result")
    } catch (e: NullPointerException) {
        println("Ошибка: ${e.message}")
    }
}

fun concatenateStrings(str1: String?, str2: String?): String {
    if (str1 == null || str2 == null) {
        throw NullPointerException("Одна из строк равна null.")
    }
    return str1 + str2
}

fun Exercise17() {
    try {
        val result = remainder(10, 0)
        println("Остаток от деления: $result")
    } catch (e: ArithmeticException) {
        println("Ошибка: ${e.message}")
    }
}

fun remainder(num1: Int, num2: Int): Int {
    if (num2 == 0) {
        throw ArithmeticException("Деление на ноль невозможно.")
    }
    return num1 % num2
}

fun Exercise18() {
    try {
        val result = squareRoot(-4.0)
        println("Квадратный корень: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun squareRoot(number: Double): Double {
    if (number < 0) {
        throw IllegalArgumentException("Невозможно извлечь квадратный корень из отрицательного числа.")
    }
    return Math.sqrt(number)
}

fun Exercise19() {
    try {
        val result = celsiusToFahrenheit(-300.0)
        println("Температура в Фаренгейтах: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun celsiusToFahrenheit(celsius: Double): Double {
    if (celsius < -273.15) {
        throw IllegalArgumentException("Температура ниже абсолютного нуля невозможна.")
    }
    return (celsius * 9/5) + 32
}

fun Exercise20() {
    try {
        val result = checkString(null)
        println("Строка: $result")
    } catch (e: IllegalArgumentException) {
        println("Ошибка: ${e.message}")
    }
}

fun checkString(str: String?): String {
    if (str.isNullOrEmpty()) {
        throw IllegalArgumentException("Строка пуста или равна null.")
    }
    return str
}

fun main(args: Array<String>) {
    val number = readLine()?.toIntOrNull();
    when(number) {
        1 -> Exercise1();
        2 -> Exercise2();
        3 -> Exercise3();
        4 -> Exercise4();
        5 -> Exercise5();
        6 -> Exercise6();
        7 -> Exercise7();
        8 -> Exercise8();
        9 -> Exercise9();
        10 -> Exercise10();
        11 -> Exercise11();
        12 -> Exercise12();
        13 -> Exercise13();
        14 -> Exercise14();
        15 -> Exercise15();
        16 -> Exercise16();
        17 -> Exercise17();
        18 -> Exercise18();
        19 -> Exercise19();
        20 -> Exercise20();
    }
}