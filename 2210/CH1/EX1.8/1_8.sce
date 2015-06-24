//Chapter 1, Example 1.8, figure 1.23
clc
n=3                         //no of recievers
Zo=50                       //input impedance of each receiver
Van=100*10^-6               //open-circuit voltage in aerial

//calculation 
R=((n-1)/(n+1))*Zo
V=1/(2*n)*Van

printf("(a) Value of the matching resistor = %d ohm\n\n\n",R)
printf("(b) Voltage at receiver input terminal = %.3f uV",V*10^6)
