# I'M NOT DONE

#
# Core Concept:
#
#   One final note on `fn` functions. If the body of the 
#   function might raising an exception, we need to explicitly
#   label the function with the "raises" keyword (see the main
#   function for an example).
#
#   No need to adjust any code in the function bodies, just adjust
#   the function signature(s).
#
#   FYI: If the function has a return type, you put the "raises"
#   before the "-> Type:"
#
#   https://docs.modular.com/mojo/manual/functions.html#fn-functions
#

from testing import assert_equal


fn main() raises:
    var num: Int = 10
    assert_equal(num, 10)

    num = num * 2
    check_if_twenty(num)


fn check_if_twenty(num: Int) raises:
    assert_equal(num, 20)
