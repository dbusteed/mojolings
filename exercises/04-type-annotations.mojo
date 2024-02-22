# I'M NOT DONE

#
# Core Concept:
#
#   Mojo supports (and encourages) type annoations when declaring variables.
#   This "can make your code more predictable, manageable, and secure" (docs).
#
#   In this exercise, you will work backwards, and use the function signature
#   to determine the correct type to assign to the three variables.
#
#   https://docs.modular.com/mojo/manual/variables.html#type-annotations
#

fn main():
    let name: = 'MoJoe'
    let age: = 20
    let gpa: = 3.80
    print_student_info(name, age, gpa)


fn print_student_info(name: String, age: Int, gpa: Float16):
    print('Name: ' + name + ', Age: ' + age + ', GPA: ' + gpa)
