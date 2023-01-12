#!/bin/bash

read -r -p "Introduce un numero: " number1
read -r -p "Introduce otro numero: " number2
echo "$(($number1 + $number2))"
