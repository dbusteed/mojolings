# I'M NOT DONE

# 
# Core Concept:
#
#   Mojo has two keywords for declaring functions:
#     - `def` functions allow no type declarations and dynamic behaviors (Python style)
#     - `fn` functions enforces type-checking and memory safe behaviors (Rust style)
#   
#   We have a few funcions below that may (or may not) need help.
#   Without changing the function signature or function body, adjust
#   the function declaration so that the program will compile 
#   without any errors
#
#   https://docs.modular.com/mojo/manual/basics.html#functions
#

def main():
    let name = "Mojo"
    say_hi(name)
    say_hello(name)


def say_hi(name):
    greeting = 'Hi ' + name
    print(greeting)


fn say_hello(name: String):
    let greeting = 'Hello ' + name
    print(greeting)
