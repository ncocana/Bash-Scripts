#!/bin/bash

#clear
read -r -p "Introduce tu año de nacimiento: " yearUser
read -r -p "Introduce tu mes de nacimiento [ej: 05]: " monthUser
read -r -p "Introduce tu día de nacimiento: " dayUser
# yearResult=$(( $(date +%Y) - year ))
# monthResult=$(( $(date +%m) - month ))
# dayResult=$ (( $(date +%d) - day ))

year_act=$(date +%Y)
month_act=$(date +%m)
day_act=$(date +%d)

# Example data:
# Actual date: 12-01-2023
# Birthday: 26-05-2001
# Data greater than birthday for if-else: 30-08-2023

# [2023 - 2001 = 22]
yearUser=$(( $year_act - $yearUser ))

# If 'monthUser' is greather than 'month_act'...
if [ $monthUser -gt $month_act ]
        then
                # Subtract '1' to 'yearUser'. [22 - 1 = 21]
                yearUser=$(( $yearUser - 1 ))

                # Subtract 'month_act' to 'monthUser'. [05 - 01 = 04]
                monthDifference=$(( $monthUser - $month_act ))

                # Subtract 'monthDifference' to '12'. [12 - 04 = 08]
                monthUser=$(( 12 - $monthDifference ))
        else
                # If 'monthUser' isn't greather than 'month_act',
                # subtract 'monthUser' to 'month_act'. [08 - 05 = 03]
                monthUser=$((  $month_act - $monthUser ))
fi

# If 'dayUser' is greather than 'day_act'...
if [ $dayUser -gt $day_act ]
        then
                # Subtract '1' to 'monthUser'. [08 - 1 = 07]
                monthUser=$((  $monthUser - 1 ))

                # Subtract 'day_act' to 'dayUser'. [26 - 12 = 14]
                dayDifference=$((  $dayUser - $day_act ))

                # Subtract 'dayDifference' to '30'. [30 - 14 = 16]
                dayUser=$((  30 - $dayDifference ))
        else
                # If 'dayUser' isn't greather than 'day_act',
                # subtract 'dayUser' to 'day_act'. [30 - 26 = 04]
                dayUser=$((  $day_act - $dayUser ))
fi

echo "Tienes $yearUser años, $monthUser meses, y $dayUser dias de edad."
