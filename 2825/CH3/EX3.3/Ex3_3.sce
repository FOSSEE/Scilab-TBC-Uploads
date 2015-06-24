//Ex3_3 Pg-182
clc

I=2*10^6 //forward current density
Is=30 //saturation current density
ekt=40
V=(1/40)*log(I/Is) //Applied forward voltage
printf("Applied forward voltage = %.3f V",V)
