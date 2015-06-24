//Example 3-8,Page No - 113

clear
clc

Vs =24
Im =9.3

PEP = Vs*Im 
Pavg1 = PEP/3
Pavg2 = PEP/4

printf('The peak envelope power is %.1f watt\n Average power of transmitter is %.1f watt to %.1f watt',PEP,Pavg2,Pavg1)
