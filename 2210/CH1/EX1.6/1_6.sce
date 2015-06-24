//Chapter 1, Example 1.6
clc
n=2                         //no of recievers
Zo=75                       //input impedance of each receiver

//calculating the value of resistor
R=((n-1)/(n+1))*Zo

printf("Value of the matching resistor = %d ohm",R)
