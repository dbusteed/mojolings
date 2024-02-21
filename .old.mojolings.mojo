# TODO can the driver script be writtin in Mojo instead of Bash?
# i guess it could also be Python. 
# is there a native way to handle the hot reloading?

from python import Python

fn main() raises:
    let os = Python.import_module('os')
    let sub = Python.import_module('subprocess')
    
    var exercises = os.listdir('exercises')
    var out: PythonObject

    for ex in exercises:
        pass
