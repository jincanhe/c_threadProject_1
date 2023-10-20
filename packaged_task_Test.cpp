#include <iostream>
#include "thread"
#include "mutex"
#include "vector"
#include "memory"
#include "future"
#include "deque"

std::mutex m;
std::deque<std::packaged_task<int(bool)>> task_q;

bool gui_shutdown_message_received() {
    return false;
}

int testPackageTask(bool b) {
    std::cout << "testPackageTask" << std::endl;
    return 999;
}

//主要运行函数
void gui_thread() {

    while(true)
    {

        if(task_q.empty()) continue;

        std::packaged_task<int(bool)> task;
        std::lock_guard<std::mutex> lk(m);
        task = std::move(task_q.front());
        task_q.pop_front();
        task(true);

        std::cout << "gui_thread" << std::endl;
        return;
    }
}

template<typename Func>
std::future<int> post_task_for_gui_thread(Func f, bool b)
{
    std::packaged_task<int(bool)> task(f);
    std::future<int> res = task.get_future();
    std::lock_guard<std::mutex> lk(m);
    task_q.push_back(std::move(task));
    return res;
}


int main() {

    //---- 类模板     把多线程抽象化 自动分配线程
    //---- 模板参数是函数签名
    std::packaged_task<int(bool)> pt;

    auto future = post_task_for_gui_thread(testPackageTask, true);

    std::thread thread(gui_thread);
    thread.join();

    int num = future.get();
    std::cout << num;


    return 0;
}
