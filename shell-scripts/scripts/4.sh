#!bin/bash

read number
(( $number % 2 )) || result="one factor"
(( $number % 3 )) || result="one factor...actually two!"

echo ${result:-$number}
