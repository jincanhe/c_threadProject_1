#include <iostream>
#include "iterator"
#include <algorithm>
#include "vector"
#include "map"
#include "unordered_map"
#include "set"
//
// Created by 59822 on 2023/11/8.
//

template <typename ...Ts>
auto sum(Ts ...ts)
{
    return (ts + ...);
}

template <typename R, typename ...Ts>
auto matches(R& range, Ts ...ts)
{
    return (std::count(std::begin(range), std::end(range), ts) + ...);
}

template <typename ...Ts>
bool within(int min, int max, Ts ...i)
{
    return ((i >= min && i <= max) || ...);
}

template <typename M>
void sprint(const M &m)
{
    for (const auto&[k,v] :m) {
        std::cout <<"key: " << k << " value: " << v << std::endl;
    }
}

struct coord
{
    int x;
    int y;
};

bool operator==(const coord& lhs, const coord& rhs)
{
    return lhs.x == rhs.x && lhs.y == rhs.y;
}

namespace std
{
    template<>
    struct hash<coord>
    {
        using argument_name = coord;
        using result_type = size_t;

        result_type operator()(const argument_name &c) const
        {
            return static_cast<result_type>(c.x) + static_cast<result_type>(c.y);
        }
    };
}

int main()
{

//-----vector
    std::cout<< "-----vector" << std::endl;
    std::vector<int> v{1, 2, 3, 4, 5};
    std::cout << matches("abcdefg",'a','b') << std::endl;

    std::cout<<"\n";
//-----



//-----map
    std::cout<< "-----map" << std::endl;
    std::map<int, std::string> m_map{{1, "a"}, {2, "b"}, {3, "c"},{4, "c"}};
    auto test_a = m_map.extract(1);
    auto test_b = m_map.extract(3);
    m_map.insert(std::move(test_b)); //亡值
    sprint(m_map);


    std::cout<<"\n";
//-----




//-----unordered_map
    std::cout<< "-----unordered_map" << std::endl;
    std::unordered_map<coord, int> um_map {
            { {0, 0}, 1},
            { {0, 1}, 2},
            { {2, 1}, 3}
    };

    for (auto& [um_k,um_v]: um_map) {
        std::cout<< "key: " << um_k.x << " " << um_k.y << " value: " << um_v << std::endl;
    }


    std::cout<<"\n";
//-----




//-----set
    std::cout<< "-----set" << std::endl;
    //TODO 如何终止cin
//    std::set<std::string> s;
//    std::istream_iterator<std::string> it {std::cin};
//    copy(it, std::istream_iterator<std::string>(), std::inserter(s, s.end()));
//    for (const auto& word : s) {
//        std::cout << word << " ";
//    }
//
//    std::cout<<"\n";
//-----



    return 0;
}

