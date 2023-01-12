#!/bin/bash

echo "¡Adivina el PID!"
read -r -p "Introduce un numero: " number

PID=$$
#echo $PID

if [ $PID -gt $number ]
        then
                echo "Tu numero es menor que el ID del proceso."
fi

if [ $PID -lt $number ]
        then
                echo "Tu numero es mayor que el ID del proceso."
fi

if [ $PID -eq $number ]
        then
                echo "Has adivinado el PID."
fi
