# I'M NOT DONE

#
# Core Concept:
#
#   We've seen function annations before in a previous exercise, so
#   this one should be super easy!
#
#   Remember, when we `fn` functions, all arguments are return types
#   need annotations. If no return type annotation is given, it defaults
#   to `None`.
#
#   Two functions below are missing the correct annotations, help them!
#
#   https://docs.modular.com/mojo/manual/functions.html#fn-functions
#

fn main():
    let x: Int = 5
    let y: Int = 3
    
    let summ = add_ints(x, y)
    let diff = sub_ints(x, y)
    
    let prod = multiply_floats(3.14, 4.5)


fn add_ints(x: Int, y: Int) -> Int:
    return x + y


fn sub_ints(x, y):
    return x - y


fn multiply_floats(x, y):
    return x * y
