#include <iostream>

// Функція для обчислення чисел Трібоначі через рекурсію
int tribonacci(int n) {
    if (n == 0 || n == 1) {
        return 0;
    } else if (n == 2) {
        return 1;
    } else {
        return tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3);
    }
}

int main() {
    // Приклад виклику функції для n = 40
    int result = tribonacci(40);

    std::cout << "Tribonacci for n=40: " << result << std::endl;

    return 0;
}