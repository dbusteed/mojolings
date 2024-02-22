# I'M NOT DONE

#
# Core Concept:
#
#   Let's use what we've learned so far and fix this program
#

from testing import assert_equal, assert_not_equal


fn main() raises:
    var result: Int
    let start: Int = 0

    result = add_two(start)
    result = add_three(result)

    assert_equal(result, 5)

    let msg: String = "You've completed Quiz 1!"
    print_msg(msg)


fn add_two(n: Int) raises -> Int:
    assert_not_equal(n, -1)
    return n + 2


fn add_three(n: Int) -> Int:
    return n + 3


fn print_msg(msg: String):
    print(msg)