#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 10.5, b = 5.2;
    
    std::cout << "Adding " << a << " + " << b << " = " << calc.Add(a, b) << std::endl;
    std::cout << "Subtracting " << a << " - " << b << " = " << calc.Sub(a, b) << std::endl;
    
    return 0;
}