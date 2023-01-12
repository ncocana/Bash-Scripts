#!/bin/bash

#clear
#read -r -p "Introduzca un número: " number
let resto=$1%2
if [ $resto -eq 0 ]; then
        echo "El número $1 es par"
    else
        echo "El número $1 es impar"
fi
