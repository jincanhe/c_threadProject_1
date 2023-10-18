#include <iostream>
#include "thread"

void test_fun(){ std::cout << "testing()";};
int main() {
    std::cout << "Hello, World!" << std::endl;
    std::thread t(test_fun);
    return 0;
}

