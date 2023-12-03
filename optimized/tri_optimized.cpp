#include <iostream>
#include <unordered_map>

std::unordered_map<int, int> memo;  // Кеш для зберігання обчислених значень

// Функція для обчислення чисел Трібоначі через рекурсію з кешуванням
int tribonacci(int n) {
    if (n == 0 || n == 1) {
        return 0;
    } else if (n == 2) {
        return 1;
    } else {
        // Перевірка, чи значення для n вже є в кеші
        if (memo.find(n) != memo.end()) {
            return memo[n];
        } else {
            // Рекурсивне обчислення та збереження результату в кеші
            memo[n] = tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3);
            return memo[n];
        }
    }
}

int main() {
    // Приклад виклику функції для n = 40
    int result = tribonacci(40);

    std::cout << "Tribonacci for n=40: " << result << std::endl;

    return 0;
}
