//Ex10_5 Pg-518
clc

R1=2*10^(3) //resistor R1 in ohm
Rf=0 //feedback resistor in ohm

disp("(1) When resistor 100 k-ohm is in zero position")
A=1+Rf/R1 //gain
printf(" Gain = %.0f \n",A)

Rf=100*10^(3)
disp("(1) When resistor 100 k-ohm is in maximum position")
A=1+Rf/R1 //gain
printf(" Gain = %.0f",A)
