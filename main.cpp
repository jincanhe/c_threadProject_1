#include <iostream>
#include "thread"
#include "mutex"
#include "vector"
#include "memory"


class testClass
{
public:
    testClass() { std::cout << "testClass()\n"; }
    static testClass* getInstance()
    {
        static testClass instance;
        std::cout << "incomplete\n";
        return &instance;
    }
};

struct some_resource {
    void do_something() { std::cout << "do_something()\n"; }
};

void test_fun(){
    testClass::getInstance();
    std::cout << "testing()\n";};
int main() {

    std::shared_ptr<some_resource> sp;
    if(!sp)
    {
        sp.reset(new some_resource);
    }
    sp->do_something();

    std::vector<std::thread> threads;
    for(int i = 0; i < 10; ++i)
    {
        threads.push_back(std::thread(test_fun));
    }

    for(auto& thread : threads)
    {
        thread.join();
    }

    return 0;
}
