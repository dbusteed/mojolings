# Mojolings 🔥

> # IN PROGRESS! CONTRIBUTIONS WELCOME!

Learn to read and write Mojo code by fixing small programs.

As you may have guessed, this project is inspired by the [Rustlings](https://github.com/rust-lang/rustlings) project, and borrows a few ideas as needed.

## Requirements

* [Mojo](https://docs.modular.com/mojo/manual/get-started/)
* macOS/Linux. Currently Mojo only supports these platforms (including WSL) so this shouldn't be an issue

## Getting Started

Mojolings follows the [Mojo Manual](https://docs.modular.com/mojo/manual/) closely for exercise topics. As stated in the Mojo docs, Mojo is not recommended for new programmers, but best suited for those with some programming experience. Exercise will highlight areas where Mojo differs from other languages, and won't cover basic features of programs (ie variable assignment, functions, conditional logic).

When you're ready to start, run the Mojolings entrypoint, `mojolings.bash`.

```bash
$ # you may need to add permissions to execute the script
$ chmod +x mojolings.bash
$
$ ./mojolings
```

The script will point you to a Mojo program in the `exercices` folder that needs fixing. After you've fixed the program and see the ✅ in the Mojolings output, you can continue to the next exercise by removing `I'M NOT DONE` from the beginning of the file (see `exercices/01-hello-mojolings.mojo` for more details).

You'll quickly notice that you'll need to run `mojolings.bash` repeatedly to test your code. While it's not ideal, you can use a third-party tool like [entr](https://github.com/eradman/entr) or [when-changed](https://github.com/joh/when-changed) to automatically run the Mojolings script when you make changes to one of the exercices.

Here's and example with `when-changed`:

```bash
$ when-changed -s -r exercises ./mojolings.bash
```

## Advanced

There are two ways to run Mojolings.

The first (and default) option is to do the exercies one-by-one. This allows you to see the output of each Mojo program and experiment with the code after fixing the errors.

The alternative is nicknamed "full mode", and checks the status of every exercise without showing any output. This is useful to check your overall progress on the exercise. To run in "full mode", use the `-f` / `--full` option:

```bash
$ ./mojolings.bash --full
```

## Solutions

Solutions can be found in the `solutions` directory. These are primarly included for sanity checks to make sure that the programs *can* run after the appropriate errors are fixed, but feel free to take a peek if you get stuck. Please note there are often more than one way to solve the exercise.

You can test the solution files with the `-s` / `--solutions` flag, which can be helpful when contributing exercises:

```bash
$ ./mojolings.bash --full --solutions
```

## Contributing

Contributions are welcome!
