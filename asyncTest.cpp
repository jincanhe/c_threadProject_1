#include <iostream>
#include "thread"
#include "mutex"
#include "vector"
#include "memory"
#include "future"

//----一段很复杂耗时的计算，需要返回值 但是不急拿结果 Async
struct testAsync
{
    void foo(int, std::string const&) {
        std::cout << " testAsync foo()\n";
    };
    std::string bar(std::string const&) { return "bar"; }
};

struct testAsyncY
{
    double operator()(double) { return 1.0; }
};

class testAsyncMove_only
{
public:
    testAsyncMove_only(){    // 1
        std::cout << "testAsyncMove_only()\n";
    };
    testAsyncMove_only(testAsyncMove_only&&) { // 2
        std::cout << "testAsyncMove_only(testAsyncMove_only&&)\n";
    };
    testAsyncMove_only(const testAsyncMove_only&) = delete;
    testAsyncMove_only& operator=(const testAsyncMove_only&) = delete;


    void operator()() {  // 3
        std::cout << " operator()\n";
    }

};

int main() {
    testAsync ta;
    //调用的是ta
    auto f1 = std::async(&testAsync::foo, &ta, 42, "hello");
    //调用的是ta的副本
    auto f2 = std::async(&testAsync::bar, ta, "goodbye");

    testAsyncY tay;
    //testAsyncy() 由于 opeartor() 会生成一个匿名变量 ，发生了移动构造
    auto f3 = std::async(testAsyncY(), 3.141);
    //调用的是tay
    auto f4 = std::async(std::ref(tay),1.1);
    //生成匿名变量->移动构造->调用operator()
    auto f5 = std::async(testAsyncMove_only());

    //生成匿名变量->移动构造
    auto f6 = std::async(std::launch::deferred, testAsyncMove_only());
    f6.get(); //wait或者get 才会调用operator()

    //生成匿名变量->移动构造->operator()
    auto f7 = std::async(std::launch::async, testAsyncMove_only());

    return 0;
}
