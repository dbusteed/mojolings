# I'M NOT DONE

#
# Core Concept:
#
#   Type annotations for variables are optional for the most part,
#   but required when doing late initialization.
#   
#   This program can be fixed by simply adding the approrpriate 
#   type annotation.
#
#   https://docs.modular.com/mojo/manual/variables.html#late-initialization
#

from random import random_float64

fn main():
    let coin: String
    
    if random_float64() > 0.5:
        coin = 'Heads'
    else:
        coin = 'Tails'
    
    print('Coin flip result: ' + coin)
