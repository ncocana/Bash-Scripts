#!/bin/bash

numArgs=$#

args=("$@")
for param in "${args[@]}"
do
        let total+=$param
done

let promedio=$total/$numArgs

echo "El promedio es $promedio."
