#!/bin/bash
varcompe() {
    [  "$1" = "`echo -e "$1\n$2" | sort -V | head -n1`" ]
}

varcomp() {
    [ "$1" = "$2" ] && return 1 || varcompe $1 $2
}

# Test the function
varcomp 2.4.10 2.4.9 && echo "continue" || echo "don't continue" # don't continue
varcomp 2.4.8 2.4.10 && echo "continue" || echo "don't continue" # continue
varcomp 2.5.6 2.5.6 && echo "continue" || echo "don't continue" # don't continue


if [ "$(printf '%s\n' "1.1.1" "1.1.0" | sort -V | head -n1)" = "1.1.1" ]; then
    echo "ERROR"
    exit 1
else
    echo "OK"
    exit 0
fi