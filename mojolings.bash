#!/bin/bash

# TODO
# - maybe don't show previous exercises while in interactive mode?
# - some message when all exercises are done?
# - % completed in full mode?

clear

exercise_dir="exercises"
full_check=0

while test $# -gt 0; do
    case "$1" in
        -f|--full)
            full_check=1
            shift
            ;;

        # debug!
        -s|--solutions)
            exercise_dir="solutions"
            shift
            ;;
    esac
done

if [ $full_check -eq 1 ]; then
    for exercise in $exercise_dir/*.mojo; do
        output=$(mojo $exercise 2>&1)
        if [ $? -eq 0 ]; then
            echo "✅ $(basename $exercise)"
        else
            echo "❌ $(basename $exercise)"
        fi
    done
else
    for exercise in $exercise_dir/*.mojo; do
        head -n 1 $exercise | grep "I'M NOT DONE" &> /dev/null
        if [ $? -ne 0 ]; then 
            echo "still debating if we show the previously completed exercises" > /dev/null
            # echo "✅ $(basename $exercise)"
        else
            output=$(mojo $exercise 2>&1)
            if [ $? -eq 0 ]; then
                echo "✅ $(basename $exercise)"
                echo -e "\n$output"
                echo -e "\nRemove \"I'M NOT DONE\" from \"$(basename $exercise)\" to continue."
                exit 0
            else
                echo "❌ $(basename $exercise)"
                echo -e "\n$output"
                exit 1
            fi
        fi
    done
fi